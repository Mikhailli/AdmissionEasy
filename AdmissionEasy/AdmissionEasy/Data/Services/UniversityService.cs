#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class UniversityService
{
    private readonly EFUniversityRepository _repository;

    public UniversityService(EFUniversityRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<University> GetAll()
    {
        return _repository.GetAll().ToList();
    }

    public University GetById(int id)
    {
        return _repository.GetById(id);
    }
}