namespace AdmissionEasy.ViewModels;

public class DirectionsViewModel
{
    public List<string> UniversityTitles { get; set; }

    public List<string> EducationLevelTitles { get; set; }

    public List<string> EducationFormTitles { get; set; }

    public List<string> Subjects { get; set; }

    public List<string> EducationAreaTitles { get; set; }

    public List<string> InstituteTitles { get; set; }
    
    public List<int> Costs { get; set; }
    
    public List<int> NumbersOfPlacesOnBudget { get; set; }
    
    public List<int> PassingScoresOnBudget { get; set; }
    
    public List<int> NumbersOfPlacesOnPaid { get; set; }
    
    public List<int> PassingScoresOnPaid { get; set; }
    
    public List<int> Years { get; set; }

    public DirectionsViewModel(List<string> universityTitles, List<string> educationLevelTitles,
        List<string> educationFormTitles, List<string> subjects, List<string> educationAreaTitles,
        List<string> instituteTitles, List<int> costs, List<int> numbersOfPlacesOnBudget,
        List<int> passingScoresOnBudget, List<int> numbersOfPlacesOnPaid, List<int> passingScoresOnPaid,
        List<int> years)
    {
        UniversityTitles = universityTitles;
        EducationLevelTitles = educationLevelTitles;
        EducationFormTitles = educationFormTitles;
        Subjects = subjects;
        EducationAreaTitles = educationAreaTitles;
        InstituteTitles = instituteTitles;
        Costs = costs;
        NumbersOfPlacesOnBudget = numbersOfPlacesOnBudget;
        PassingScoresOnBudget = passingScoresOnBudget;
        NumbersOfPlacesOnPaid = numbersOfPlacesOnPaid;
        PassingScoresOnPaid = passingScoresOnPaid;
        Years = years;
    }
}