#nullable enable
using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class AreaOfStudySubject : Entity<int>
{
    public AreaOfStudy AreaOfStudy { get; set; } = null!;
    public int AreaOfStudyId { get; set; }
    public Subject Subject { get; set; } = null!;
    public int SubjectId { get; set; }
}