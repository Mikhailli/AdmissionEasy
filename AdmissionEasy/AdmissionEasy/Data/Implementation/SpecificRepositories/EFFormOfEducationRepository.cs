#nullable enable
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories
{
    public class EFFormOfEducationRepository : EFGenericRepository<FormOfEducation>
    {
        EFFormOfEducationRepository(ApplicationContext context) : base(context) 
        {

        }
    }
}
