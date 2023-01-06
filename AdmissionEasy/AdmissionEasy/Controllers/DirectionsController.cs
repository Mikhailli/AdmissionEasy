#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Extensions;
using AdmissionEasy.Models;
using AdmissionEasy.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;


public class DirectionsController : Controller
{
    private readonly DirectionsToDisplayService _directionsToDisplayService;

    public DirectionsController(ApplicationContext context)
    {
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
}