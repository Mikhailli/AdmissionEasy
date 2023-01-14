using System.Text;

namespace AdmissionEasy.Data.Domain.SelectionModels;

public class OrderParameter
{
    public string Name { get; set; }

    public bool IsAscending { get; set; }

    public OrderParameter()
    {
        Name = "";
        IsAscending = true;
    }

    public OrderParameter(string name, bool isAscending)
    {
        Name = name ?? "";
        IsAscending = isAscending;
    }

    public string OrderByToString()
    {
        var stringBuilder = new StringBuilder();
        stringBuilder.Append(Name);
        stringBuilder.Append(" ");
        stringBuilder.Append(IsAscending ? "asc" : "desc");

        return stringBuilder.ToString();
    }
}