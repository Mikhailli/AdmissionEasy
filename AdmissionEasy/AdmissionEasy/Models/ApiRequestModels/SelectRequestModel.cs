namespace AdmissionEasy.Models.ApiRequestModels;

public class SelectRequestModel
{
    public int Start { get; set; }
    
    public int Length { get; set; }

    public string SearchPattern { get; set; } = null!;

    public string OrderColumnName { get; set; } = null!;
    
    public bool IsAscending { get; set; }
}