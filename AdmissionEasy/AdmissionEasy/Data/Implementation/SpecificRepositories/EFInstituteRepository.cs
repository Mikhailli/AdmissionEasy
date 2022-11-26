#nullable enable
using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories;

public class EFInstituteRepository : EFGenericRepository<Institute>
{
    public EFInstituteRepository(ApplicationContext context) : base(context)
    {
        
    }

    public Institute GetInstituteByTitle(string title)
    {
        return GetQueryable(i => i.Title == title).FirstOrDefault() ?? throw new InvalidOperationException();
    }
}