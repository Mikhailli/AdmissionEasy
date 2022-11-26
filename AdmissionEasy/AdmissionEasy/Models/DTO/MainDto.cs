#nullable enable

namespace AdmissionEasy.Models.DTO;

public class MainDto
{
    public List<AdditionalInformationAboutAreaOfStudy> AdditionalInfos { get; set; } = null!;
    public List<AreaOfStudy> EducationAreas { get; set; } = null!;
    public List<FormOfEducation> EducationForms { get; set; } = null!;
    public List<Institute> Institutes { get; set; } = null!;
    public List<LevelOfEducation> EducationLevels { get; set; } = null!;
    public List<List<Subject>> Subjects { get; set; } = null!;
    public List<University> Universities { get; set; } = null!;
}