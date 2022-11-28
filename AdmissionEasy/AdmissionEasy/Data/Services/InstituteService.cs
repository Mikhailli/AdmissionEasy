#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class InstituteService
{
    private readonly EFInstituteRepository _instituteRepository;
    private readonly EFUniversityRepository _universityRepository;

    public InstituteService(EFInstituteRepository instituteRepository, EFUniversityRepository universityRepository)
    {
        _instituteRepository = instituteRepository ?? throw new ArgumentNullException(nameof(instituteRepository));
        _universityRepository = universityRepository ?? throw new ArgumentNullException(nameof(universityRepository));
    }

    public List<Institute> GetAll()
    {
        var institutes = _instituteRepository.GetAll().ToList();
        var universities = _universityRepository.GetAll().ToList();
        foreach (var institute in institutes)
        {
            institute.University = universities.Find(university => university.Id == institute.UniversityId)!;
        }

        return institutes;
    }
}