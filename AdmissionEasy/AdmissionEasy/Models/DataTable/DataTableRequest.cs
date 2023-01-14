namespace AdmissionEasy.Models.DataTable;

public class DataTableRequest
{
    public int Draw { get; set; }
    
    public int Start { get; set; }
    
    public int Length { get; set; }
    
    public DataTableSearch Search { get; set; }
    
    public DataTableOrder[]? Order { get; set; }
    
    public DataTableColumn[] Columns { get; set; }

    public (string? columnName, bool isAscending) GetOrderColumn()
    {
        if (Order is null || Order.Length == 0)
        {
            return (null, true);
        }

        var columnIndex = Order[0].Column;
        var isAscending = Order[0].Dir == "asc";

        if (columnIndex >= Columns.Length)
        {
            throw new InvalidOperationException("Столбец, указанный для сортировки не существует");
        }

        var orderColumnName = Columns[columnIndex].Name;

        return (orderColumnName, isAscending);
    }
}