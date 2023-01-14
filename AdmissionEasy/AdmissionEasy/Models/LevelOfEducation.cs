#nullable enable
using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class LevelOfEducation : Entity<int>
{
    public string Title { get; set; } = null!;
}