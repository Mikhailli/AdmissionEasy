#nullable enable
using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class AdditionalInformationAboutAreaOfStudy : Entity<int>
{
    public int Cost { get; set; }
    public int? NumberOfPlacesOnBudget { get; set; }
    public int? PassingScoreOnBudget { get; set; }
    public int? NumberOfPlacesOnPaid { get; set; }
    public int? PassingScoreOnPaid { get; set; }
    public int Year { get; set; }
}