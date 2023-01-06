#nullable enable
using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class Institute : Entity<int>
{
    public string Title { get; set; } = null!;
    public int UniversityId { get; set; }
    public University University { get; set; } = null!;
}