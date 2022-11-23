using System.Data.Entity;
namespace AdmissionEasy.Models;

public class EFInstituteRepository : EFGenericRepository<Institute>
{
    public EFInstituteRepository(ApplicationContext context) : base(context)
    {
        
    }
}