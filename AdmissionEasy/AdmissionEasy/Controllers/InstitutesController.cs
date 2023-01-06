#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;

public class InstitutesController : Controller
{
    private readonly InstituteService _instituteService;

    public InstitutesController(ApplicationContext context)
    {
        _instituteService = new InstituteService(new EFInstituteRepository(context), new EFUniversityRepository(context));
    }
    public IActionResult Index()
    {
        ViewBag.InfoForTable = _instituteService.GetAll();
        return View();
    }
}