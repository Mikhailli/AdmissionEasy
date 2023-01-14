using AdmissionEasy.Data.Domain.SelectionModels;
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;
using AdmissionEasy.Models.ApiResponseModels;

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

    public SelectedData<DirectionsToDisplay> SelectDirections(DirectionsSelectParameters parameters)
    {
        var recordsTotal = _repository.GetCount();
        var filteredRecordsTotal = _repository.GetCount(parameters);

        var directions = _repository.GetAll(parameters, true).ToList();

        return new SelectedData<DirectionsToDisplay>(recordsTotal, filteredRecordsTotal, directions);
    }
}