using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class DirectionsToDisplayService
{
    private readonly EFDirectionsToDisplayRepository _repository;

    public DirectionsToDisplayService(EFDirectionsToDisplayRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<DirectionsToDisplay> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}