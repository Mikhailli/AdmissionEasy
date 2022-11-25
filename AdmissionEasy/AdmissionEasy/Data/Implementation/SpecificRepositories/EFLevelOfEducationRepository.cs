#nullable enable
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories
{
    public class EFLevelOfEducationRepository : EFGenericRepository<LevelOfEducation>
    {
        public EFLevelOfEducationRepository(ApplicationContext context) : base(context)
        {

        }
    }
}
