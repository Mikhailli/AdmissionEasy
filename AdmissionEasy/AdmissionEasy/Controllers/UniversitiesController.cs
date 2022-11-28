#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;

public class UniversitiesController : Controller
{
    private readonly ApplicationContext _db;
    private readonly InstituteService _instituteService;
    private readonly UniversityService _universityService;

    public UniversitiesController(ApplicationContext context)
    {
        _db = context;
        _instituteService = new InstituteService(new EFInstituteRepository(_db));
        _universityService = new UniversityService(new EFUniversityRepository(_db));
    }
    public IActionResult Index()
    {
        ViewBag.InfoForTable = _universityService.GetAll();
        return View();
    }
    public IActionResult UniversityPage()
    {
        ViewBag.InfoForTable = _universityService.GetAll();
        return Redirect("/universities");
    }
}