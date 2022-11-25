#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class LevelOfEducationService
{
    private readonly EFLevelOfEducationRepository _repository;

    public LevelOfEducationService(EFLevelOfEducationRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<LevelOfEducation> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}