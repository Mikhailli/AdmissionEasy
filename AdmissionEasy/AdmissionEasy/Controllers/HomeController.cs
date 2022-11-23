using System.Data.Entity;
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;

public class HomeController : Controller
{
    private readonly ApplicationContext db;
    public HomeController(ApplicationContext context)
    {
        db = context;
    }
    public IActionResult Index()
    {
        var t = new EFGenericRepository<Institute>(db);
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