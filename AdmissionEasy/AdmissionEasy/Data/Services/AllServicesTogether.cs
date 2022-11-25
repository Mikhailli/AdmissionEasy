#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Data.Services;

public class AllServicesTogether
{
    private readonly AdditionalInformationAboutAreaOfStudyService _additionalInformationAboutAreaOfStudyRepositoryService;
    private readonly AreaOfStudyService _areaOfStudyService;
    private readonly FormOfEducationService _formOfEducationService;
    private readonly InstituteService _instituteService;
    private readonly LevelOfEducationService _levelOfEducationService;
    private readonly SubjectService _subjectService;
    private readonly UniversityService _universityService;
    private readonly AreaOfStudySubjectService _areaOfStudySubjectService;

    public AllServicesTogether(ApplicationContext db)
    {
        _additionalInformationAboutAreaOfStudyRepositoryService = new AdditionalInformationAboutAreaOfStudyService(new EFAdditionalInformationAboutAreaOfStudyRepository(db));
        _areaOfStudyService = new AreaOfStudyService(new EFAreaOfStudyRepository(db));
        _formOfEducationService = new FormOfEducationService(new EFFormOfEducationRepository(db));
        _instituteService = new InstituteService(new EFInstituteRepository(db));
        _levelOfEducationService = new LevelOfEducationService(new EFLevelOfEducationRepository(db));
        _subjectService = new SubjectService(new EFSubjectRepository(db));
        _universityService = new UniversityService(new EFUniversityRepository(db));
        _areaOfStudySubjectService = new AreaOfStudySubjectService(new EFAreaOfStudySubjectRepository(db));
    }

    public List<AdditionalInformationAboutAreaOfStudy> AdditionalInformationAboutAreaOfStudy => _additionalInformationAboutAreaOfStudyRepositoryService.GetAll();
    public List<FormOfEducation> FormsOfEducation => _formOfEducationService.GetAll();
    public List<LevelOfEducation> LevelsOfEducation => _levelOfEducationService.GetAll();
    public List<Subject> Subjects => _subjectService.GetAll();
    public List<AreaOfStudySubject> AreaOfStudySubjects => _areaOfStudySubjectService.GetAll();
    public List<University> Universities => _universityService.GetAll();
    public List<Institute> Institutes 
    {
        get
        {
            var institutes = _instituteService.GetAll();
            foreach (var institute in institutes)
            {
                institute.University = Universities.Find(university => university.Id == institute.UniversityId) ?? new University();
            }

            return institutes;
        }
    }

    public List<AreaOfStudy> AreasOfStudy
    {
        get
        {
            var areasOfStudy = _areaOfStudyService.GetAll();
            foreach (var areaOfStudy in areasOfStudy)
            {
                areaOfStudy.Institute = Institutes.Find(institute => institute.Id == areaOfStudy.InstituteId) ?? new Institute();
                areaOfStudy.FormOfEducation = FormsOfEducation.Find(form => form.Id == areaOfStudy.FormOfEducationId) ?? new FormOfEducation();
                areaOfStudy.LevelOfEducation = LevelsOfEducation.Find(level => level.Id == areaOfStudy.LevelOfEducationId) ?? new LevelOfEducation();
                areaOfStudy.AdditionalInformationAboutAreaOfStudy = AdditionalInformationAboutAreaOfStudy.Find(info => info.Id == areaOfStudy.AdditionalInformationAboutAreaOfStudyId) ?? new AdditionalInformationAboutAreaOfStudy();
            }
            
            return areasOfStudy;
        }
    }
}