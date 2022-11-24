#nullable enable
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;

public class HomeController : Controller
{
    private readonly ApplicationContext _db;
    public HomeController(ApplicationContext context)
    {
        _db = context;
    }
    public IActionResult Index()
    {
        var t = new EFInstituteRepository(_db);
        var d = t.Create();
        
        var e = t.GetAll();
        return View();
    }
    /*[HttpGet]
    public IActionResult GetAreasOfStudy(int? id)
    {
        if (id is null) return RedirectToAction("Index");
        var t = new EFInstituteRepository(db);
        var e = t.GetAll();
        ViewBag.PhoneId = id;
        return View();
    }*/
}