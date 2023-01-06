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
        return View();
    }
}