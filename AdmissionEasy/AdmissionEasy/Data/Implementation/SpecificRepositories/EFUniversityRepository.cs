#nullable enable
using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories;

public class EFUniversityRepository : EFGenericRepository<University>
{
    public EFUniversityRepository(ApplicationContext context) : base(context)
    {

    }
}