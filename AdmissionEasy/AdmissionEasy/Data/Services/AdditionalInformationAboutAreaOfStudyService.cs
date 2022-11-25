#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class AdditionalInformationAboutAreaOfStudyService
{
    private readonly EFAdditionalInformationAboutAreaOfStudyRepository _repository;

    public AdditionalInformationAboutAreaOfStudyService(EFAdditionalInformationAboutAreaOfStudyRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<AdditionalInformationAboutAreaOfStudy> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}