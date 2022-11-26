#nullable enable
using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories
{
    public class EFAreaOfStudyRepository : EFGenericRepository<AreaOfStudy>
    {
        public EFAreaOfStudyRepository(ApplicationContext context) : base(context)
        {

        }
    }
}
