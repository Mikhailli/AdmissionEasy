#nullable enable
using AdmissionEasy.Data.Interfaces;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Implementation.SpecificRepositories;

public class EFAdditionalInformationAboutAreaOfStudyRepository : EFGenericRepository<AdditionalInformationAboutAreaOfStudy>
{
    public EFAdditionalInformationAboutAreaOfStudyRepository(ApplicationContext context) : base(context)
    {

    }
}