using AdmissionEasy.Client.Services;
using AdmissionEasy.Models;
using Microsoft.EntityFrameworkCore;

namespace AdmissionEasy;

public class Startup
{
    public Startup(IConfiguration configuration)
    {
        Configuration = configuration;
    }

    private IConfiguration Configuration { get; }
    
    public void ConfigureServices(IServiceCollection services)
    {
        services.AddMvc();
        var connection = Configuration.GetConnectionString("DefaultConnection");
        services.AddDbContext<ApplicationContext>(options => options.UseSqlServer(connection));
        services.AddControllersWithViews();
        services.AddHttpClient<DirectionsService>();
    }
 
    public void Configure(IApplicationBuilder app)
    {
        app.UseDeveloperExceptionPage();
             
        app.UseStaticFiles();
        
        app.UseRouting();
 
        app.UseEndpoints(endpoints =>
        {
            endpoints.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");
        });
    }
}