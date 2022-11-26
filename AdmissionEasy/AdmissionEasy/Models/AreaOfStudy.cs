#nullable enable

using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class AreaOfStudy : Entity<int>
{
    public string Title { get; set; } = null!;
    public int InstituteId { get; set; }
    public Institute Institute { get; set; } = null!;
    public int LevelOfEducationId { get; set; }
    public LevelOfEducation LevelOfEducation { get; set; } = null!;
    public int FormOfEducationId { get; set; }
    public FormOfEducation FormOfEducation { get; set; } = null!;
    public int AdditionalInformationAboutAreaOfStudyId { get; set; }
    public AdditionalInformationAboutAreaOfStudy AdditionalInformationAboutAreaOfStudy { get; set; } = null!;
}