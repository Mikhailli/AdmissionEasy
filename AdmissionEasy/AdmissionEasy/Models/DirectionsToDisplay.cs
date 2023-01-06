using AdmissionEasy.Data.Domain.Interfaces;

namespace AdmissionEasy.Models;

public sealed class DirectionsToDisplay : Entity<int>
{
    public string UniversityTitle { get; set; } = null!;

    public string EducationLevelTitle { get; set; } = null!;

    public string EducationFormTitle { get; set; } = null!;

    public string Subjects { get; set; } = null!;

    public string EducationAreaTitle { get; set; } = null!;

    public string InstituteTitle { get; set; } = null!;
    
    public int Cost { get; set; }
    
    public int? NumberOfPlacesOnBudget { get; set; }
    
    public int? PassingScoreOnBudget { get; set; }
    
    public int? NumberOfPlacesOnPaid { get; set; }
    
    public int? PassingScoreOnPaid { get; set; }
    
    public int Year { get; set; }
}