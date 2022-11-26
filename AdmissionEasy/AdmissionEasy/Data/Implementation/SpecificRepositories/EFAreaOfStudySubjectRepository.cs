#nullable enable
using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories
{
    public class EFAreaOfStudySubjectRepository : EFGenericRepository<AreaOfStudySubject>
    {
        public EFAreaOfStudySubjectRepository(ApplicationContext context) : base(context)
        {

        }
    }
}
