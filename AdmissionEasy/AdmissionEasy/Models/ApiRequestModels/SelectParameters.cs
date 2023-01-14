namespace AdmissionEasy.Models.ApiRequestModels;

public class SelectParameters
{
    public int Start { get; }

    public int Length { get; }

    public string? SearchPattern { get; }

    public string? OrderColumnName { get; }

    public bool IsAscending { get; }

    public SelectParameters(int start, int length, string? searchPattern, string? orderColumnName, bool isAscending)
    {
        if (start < 0)
        {
            throw new ArgumentException("start не может быть отрицательным");
        }
        
        if (length < 0)
        {
            throw new ArgumentException("length не может быть отрицательным");
        }

        Start = start;
        Length = length;
        SearchPattern = searchPattern;
        OrderColumnName = orderColumnName;
        IsAscending = isAscending;
    }
}