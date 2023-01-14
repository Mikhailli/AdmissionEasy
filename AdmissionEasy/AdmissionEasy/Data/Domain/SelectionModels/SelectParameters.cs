namespace AdmissionEasy.Data.Domain.SelectionModels;

public class SelectParameters
{
    public int Start { get; set; }

    public int? Length { get; set; }

    public string SearchPattern { get; set; }

    public OrderParameter OrderParameter { get; set; }

    public SelectParameters()
    {
        Start = 0;
        Length = null;
        SearchPattern = "";
        OrderParameter = new OrderParameter();
    }

    public SelectParameters(int? start, int? length, string? searchPattern, string orderColumnName, bool? isAscending)
    {
        Start = start ?? 0;
        Length = length;
        SearchPattern = searchPattern ?? "";
        OrderParameter = new OrderParameter(orderColumnName, isAscending ?? true);
    }
}