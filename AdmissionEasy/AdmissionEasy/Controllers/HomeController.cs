#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Data.Services;
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.EntityFrameworkCore;

namespace AdmissionEasy.Controllers;

public class HomeController : Controller
{
    private readonly ApplicationContext _db;
    private readonly InstituteService _instituteService;
    private readonly AllServicesTogether _allServicesTogether;
    
    public HomeController(ApplicationContext context)
    {
        _db = context;
        _instituteService = new InstituteService( new EFInstituteRepository(_db));
        _allServicesTogether = new AllServicesTogether(_db);
    }
    public IActionResult Index()
    {

        var e = _allServicesTogether.AreaOfStudySubjects;
        var institutes = _allServicesTogether.AreasOfStudy;
        ViewDataDictionaryExtensions.SetViewBug(ViewBag, _db);
        /*foreach (var areaOfStudy in ViewBug.AreasOfStudy)
        {
            areaOfStudy.Instute = (viewBug.Institutes as ICollection<Institute>).Select(institute => institute.Id == areaOfStudy.InstituteId);
        }*/
        //ViewData.SetViewData(_db);
        return View();
    }
    /*[HttpGet]                                                                                                                                                                 
    public IActionResult GetAreasOfStudy(int? id)
    {
        ViewData.SetViewDataForUniversities(_db);
        if (id is null) return RedirectToAction("Index");
        var t = ViewData.GetAreasOfStudyFromViewData();
        return View();
    }*/
}