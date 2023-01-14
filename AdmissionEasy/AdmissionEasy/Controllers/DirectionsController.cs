#nullable enable
using AdmissionEasy.Client.Services;
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Extensions;
using AdmissionEasy.Models;
using AdmissionEasy.Models.ApiRequestModels;
using AdmissionEasy.Models.DataTable;
using AdmissionEasy.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;


public class DirectionsController : Controller
{
    private readonly DirectionsService _directionsService;
    private readonly DirectionsToDisplayService _directionsToDisplayService;

    public DirectionsController(ApplicationContext context, HttpClient httpClient)
    {
        _directionsService = new DirectionsService(httpClient);
        _directionsToDisplayService = new DirectionsToDisplayService(new EFDirectionsToDisplayRepository(context));
    }
    public IActionResult Index()
    {
        var directionsToDisplayInfo = _directionsToDisplayService.GetAll();
        
        var universityTitles = directionsToDisplayInfo.Select(dir => dir.UniversityTitle).ToList();
        var educationLevelTitles = directionsToDisplayInfo.Select(dir => dir.EducationLevelTitle).ToList();
        var educationFormTitles = directionsToDisplayInfo.Select(dir => dir.EducationFormTitle).ToList();
        var subjects = directionsToDisplayInfo.Select(dir => dir.Subjects).ToList();
        var educationAreaTitles = directionsToDisplayInfo.Select(dir => dir.EducationAreaTitle).ToList();
        var instituteTitles = directionsToDisplayInfo.Select(dir => dir.InstituteTitle).ToList();
        var costs = directionsToDisplayInfo.Select(dir => dir.Cost).ToList();
        var numbersOfPlacesOnBudget = directionsToDisplayInfo.Select(dir => dir.NumberOfPlacesOnBudget.ConvertToInt()).ToList();
        var passingScoresOnBudget = directionsToDisplayInfo.Select(dir => dir.PassingScoreOnBudget.ConvertToInt()).ToList();
        var numbersOfPlacesOnPaid = directionsToDisplayInfo.Select(dir => dir.NumberOfPlacesOnPaid.ConvertToInt()).ToList();
        var passingScoresOnPaid = directionsToDisplayInfo.Select(dir => dir.PassingScoreOnPaid.ConvertToInt()).ToList();
        var years = directionsToDisplayInfo.Select(dir => dir.Year).ToList();
        var directionsViewModel = new DirectionsViewModel(universityTitles, educationLevelTitles, educationFormTitles,
            subjects, educationAreaTitles, instituteTitles, costs, numbersOfPlacesOnBudget, passingScoresOnBudget,
            numbersOfPlacesOnPaid, passingScoresOnPaid, years);

        return View(directionsViewModel);
    }

    [HttpPost]
    [Route("[controller]/get")]
    public async Task<DataTableResponse<DirectionsToDisplay>> GetDirectionsAsync(DataTableRequest dataTableRequest)
    {
        var (orderColumnName, isAscending) = dataTableRequest.GetOrderColumn();
        
        var instituteFilter = string.IsNullOrEmpty(dataTableRequest.Columns[0].Search.Value) is false
            ? new List<string> { dataTableRequest.Columns[0].Search.Value }
            : new List<string>();
        
        var subjectFilter = string.IsNullOrEmpty(dataTableRequest.Columns[1].Search.Value) is false
            ? new List<string> { dataTableRequest.Columns[1].Search.Value }
            : new List<string>();

        var selectParameters = new DirectionsSelectParameters(dataTableRequest.Start, dataTableRequest.Length,
            dataTableRequest.Search.Value, orderColumnName ?? "PassingScoreOnBudget", isAscending, instituteFilter, subjectFilter);

        var selectedData = await _directionsService.GetDirectionsAsync(selectParameters);

        var dataTableResponse = new DataTableResponse<DirectionsToDisplay>(dataTableRequest.Draw,
            selectedData.RecordsTotal, selectedData.RecordsFiltered, selectedData.Data);

        return dataTableResponse;
    }
}