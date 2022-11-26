#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class AreaOfStudySubjectService
{
        
    private readonly EFAreaOfStudySubjectRepository _repository;

    public AreaOfStudySubjectService(EFAreaOfStudySubjectRepository repository)
    {
        _repository = repository ?? throw new ArgumentNullException(nameof(repository));
    }

    public List<AreaOfStudySubject> GetAll()
    {
        return _repository.GetAll().ToList();
    }
        
}