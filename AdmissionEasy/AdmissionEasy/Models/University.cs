#nullable enable
using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class University : Entity<int>
{
    public string Title { get; set; } = null!;
}