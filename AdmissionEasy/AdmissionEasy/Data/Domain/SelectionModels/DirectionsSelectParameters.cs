namespace AdmissionEasy.Data.Domain.SelectionModels;

public class DirectionsSelectParameters : SelectParameters
{
    public string[] InstituteTitleFilter { get; set; }
    public string[] SubjectTitleFilter { get; set; }

    public DirectionsSelectParameters(int? start, int? length, string? searchPattern,
        string orderColumnName, bool? isAscending, string[] instituteTitleFilter, string[] subjectTitleFilter)
        : base(start, length, searchPattern, orderColumnName, isAscending)
    {
        InstituteTitleFilter = instituteTitleFilter ?? Array.Empty<string>();
        SubjectTitleFilter = subjectTitleFilter ?? Array.Empty<string>();
    }
        
}