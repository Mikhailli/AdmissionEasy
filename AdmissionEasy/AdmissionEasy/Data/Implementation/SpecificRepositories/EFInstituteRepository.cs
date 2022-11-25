#nullable enable
namespace AdmissionEasy.Models;

public class EFInstituteRepository : EFGenericRepository<Institute>
{
    public EFInstituteRepository(ApplicationContext context) : base(context)
    {
        
    }

    public Institute GetInstituteByTitle(string title)
    {
        return GetQueryable(i => i.Title == title).FirstOrDefault();
    }
}