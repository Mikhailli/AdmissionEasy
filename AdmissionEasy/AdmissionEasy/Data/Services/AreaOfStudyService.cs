#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class AreaOfStudyService
{
    private readonly EFAreaOfStudyRepository _repository;

    public AreaOfStudyService(EFAreaOfStudyRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<AreaOfStudy> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}