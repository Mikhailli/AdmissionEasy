#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;

public class InstitutesController : Controller
{
    private readonly ApplicationContext _db;
    private readonly InstituteService _instituteService;
    private readonly UniversityService _universityService;

    public InstitutesController(ApplicationContext context)
    {
        _db = context;
        _instituteService = new InstituteService(new EFInstituteRepository(_db));
        _universityService = new UniversityService(new EFUniversityRepository(_db));
    }
    public IActionResult Index()
    {
        var insts = _instituteService.GetAll();
        foreach(var a in insts)
            a.University = _universityService.GetById(a.UniversityId);
        ViewBag.InfoForTable = insts;
        return View();
    }
}