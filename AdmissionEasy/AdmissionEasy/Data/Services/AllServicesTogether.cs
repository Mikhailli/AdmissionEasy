#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;
using AdmissionEasy.Models.DTO;

namespace AdmissionEasy.Data.Services;

//TODO имя бы более говорящее (-_-)
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

    //TODO видимо фабрика нужна
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

    private List<Subject> Subjects => _subjectService.GetAll();

    public MainDto CreateMainDto()
    {
        var universities = _universityService.GetAll();
        var institutes = _instituteService.GetAll();
        var educationForms = _formOfEducationService.GetAll();
        var educationLevels = _levelOfEducationService.GetAll();
        var additionalInfos = _additionalInformationAboutAreaOfStudyRepositoryService.GetAll();
        var areasOfStudy = _areaOfStudyService.GetAll();
        var areaOfStudySubjects = _areaOfStudySubjectService.GetAll();
        foreach (var areaOfStudy in areasOfStudy)
        {
            areaOfStudy.Institute = institutes.Find(institute => institute.Id == areaOfStudy.InstituteId) ?? new Institute();
            areaOfStudy.FormOfEducation = educationForms.Find(form => form.Id == areaOfStudy.FormOfEducationId) ?? new FormOfEducation();
            areaOfStudy.LevelOfEducation = educationLevels.Find(level => level.Id == areaOfStudy.LevelOfEducationId) ?? new LevelOfEducation();
            areaOfStudy.AdditionalInformationAboutAreaOfStudy = additionalInfos.Find(info => info.Id == areaOfStudy.AdditionalInformationAboutAreaOfStudyId) ?? new AdditionalInformationAboutAreaOfStudy();
        }
        
        var subjects = new List<List<Subject>>();
        
        foreach (var areaOfStudy in areasOfStudy)
        {
            var list = Subjects
                .Where(subject => areaOfStudySubjects
                .Where(area => area.AreaOfStudyId == areaOfStudy.Id)
                .Select(area => area.SubjectId)
                .Contains(subject.Id)).ToList();
            subjects.Add(list);
        }

        var mainDto = new MainDto
        {
            AdditionalInfos = additionalInfos,
            EducationAreas = areasOfStudy,
            EducationLevels = educationLevels,
            EducationForms = educationForms,
            Institutes = institutes,
            Universities = universities,
            Subjects = subjects
        };

        return mainDto;
    }
}