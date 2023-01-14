using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;

namespace AdmissionEasy.Models.DataTable;

[JsonObject(ItemNullValueHandling = NullValueHandling.Ignore, NamingStrategyType = typeof(CamelCaseNamingStrategy))]
public class DataTableResponse<T>
{
    public int Draw { get; }

    public int RecordsTotal { get; }

    public int RecordsFiltered { get; }

    public T[] Data { get; }
    
    public string Error { get; }

    public DataTableResponse(int draw, int recordsTotal, int recordsFiltered, IEnumerable<T> data, string error = null)
    {
        Draw = draw;
        RecordsTotal = recordsTotal;
        RecordsFiltered = recordsFiltered;
        Data = data.ToArray();
        Error = error;
    }
}