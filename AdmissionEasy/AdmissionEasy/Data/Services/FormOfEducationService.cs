using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class FormOfEducationService
{
    private readonly EFFormOfEducationRepository _repository;

    public FormOfEducationService(EFFormOfEducationRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<FormOfEducation> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}