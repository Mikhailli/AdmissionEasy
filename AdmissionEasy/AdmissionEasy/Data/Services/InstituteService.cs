#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class InstituteService
{
    private readonly EFInstituteRepository _repository;

    public InstituteService(EFInstituteRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<Institute> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}