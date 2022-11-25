#nullable enable
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories
{
    public class EFSubjectRepository : EFGenericRepository<Subject>
    {
        EFSubjectRepository(ApplicationContext context) : base(context)
        {

        }
    }
}
