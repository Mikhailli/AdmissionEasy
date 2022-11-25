#nullable enable
namespace AdmissionEasy.Models;

public class AreaOfStudy : Entity<int>
{
    public virtual string Title { get; set; }
    public virtual int InstituteId { get; set; }
    public virtual Institute Institute { get; set; }
    public virtual int LevelOfEducationId { get; set; }
    public virtual LevelOfEducation LevelOfEducation { get; set; }
    public virtual int FormOfEducationId { get; set; }
    public virtual FormOfEducation FormOfEducation { get; set; }
    public virtual int AdditionalInformationAboutAreaOfStudyId { get; set; }
    public virtual AdditionalInformationAboutAreaOfStudy AdditionalInformationAboutAreaOfStudy { get; set; }
    public virtual IEnumerable<Subject> Subjects { get; } = new List<Subject>();
}