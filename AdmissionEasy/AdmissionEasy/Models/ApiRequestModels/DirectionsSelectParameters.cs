namespace AdmissionEasy.Models.ApiRequestModels;

public class DirectionsSelectParameters : SelectParameters
{
    public IReadOnlyList<string> InstituteFilter { get; }
    public IReadOnlyList<string> SubjectFilter { get; }

    public DirectionsSelectParameters(int start, int length, string searchPattern,
        string? orderColumnName, bool isAscending,
        IReadOnlyList<string> instituteFilter, IReadOnlyList<string> subjectFilter)
        : base(start, length, searchPattern, orderColumnName, isAscending)
    {
        InstituteFilter = instituteFilter ?? throw new ArgumentNullException(nameof(instituteFilter));
        SubjectFilter = subjectFilter ?? throw new ArgumentNullException(nameof(subjectFilter));
    }
}