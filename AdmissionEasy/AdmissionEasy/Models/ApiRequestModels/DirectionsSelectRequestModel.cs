namespace AdmissionEasy.Models.ApiRequestModels;

public class DirectionsSelectRequestModel : SelectRequestModel
{
    public string[] InstituteTitle { get; set; } = null!;
    public string[] SubjectTitle { get; set; } = null!;
}