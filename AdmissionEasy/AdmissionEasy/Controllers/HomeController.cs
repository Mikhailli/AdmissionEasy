#nullable enable
using AdmissionEasy.Data.Services;
using AdmissionEasy.Models;
using Microsoft.AspNetCore.Mvc;

namespace AdmissionEasy.Controllers;

public class HomeController : Controller
{
    private readonly ApplicationContext _db;
    private readonly AllServicesTogether _allServicesTogether;
    
    public HomeController(ApplicationContext context)
    {
        _db = context;
        _allServicesTogether = new AllServicesTogether(_db);
    }
    public IActionResult Index()
    {
        ViewBag.InfoForTable = _allServicesTogether.CreateMainDto();

        return View();
    }
}