using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class SubjectService
{
    private readonly EFSubjectRepository _repository;

    public SubjectService(EFSubjectRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<Subject> GetAll()
    {
        return _repository.GetAll().ToList();
    }
}