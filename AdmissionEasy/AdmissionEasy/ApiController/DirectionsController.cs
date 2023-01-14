#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Models;
using AdmissionEasy.Models.ApiRequestModels;
using Microsoft.AspNetCore.Mvc;
using DirectionsSelectParameters = AdmissionEasy.Data.Domain.SelectionModels.DirectionsSelectParameters;

namespace AdmissionEasy.ApiController;

[ApiController]
[Route("api/[controller]")]
public class DirectionsController : Controller
{
    private readonly DirectionsToDisplayService _directionsToDisplayService;

    public DirectionsController(ApplicationContext context, HttpClient httpClient)
    {
        _directionsToDisplayService = new DirectionsToDisplayService(new EFDirectionsToDisplayRepository(context));
    }

    [HttpGet]
    [Route("get")]
    public IActionResult GetCustomers([FromQuery] DirectionsSelectRequestModel selectRequestModel)
    {
        var selectParameters = new DirectionsSelectParameters(selectRequestModel.Start, selectRequestModel.Length,
                selectRequestModel.SearchPattern, selectRequestModel.OrderColumnName, selectRequestModel.IsAscending,
                selectRequestModel.InstituteTitle, selectRequestModel.SubjectTitle);

        var directions = _directionsToDisplayService.SelectDirections(selectParameters);

        return Ok(directions);
    }
}