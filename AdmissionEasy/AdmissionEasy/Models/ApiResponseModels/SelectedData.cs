namespace AdmissionEasy.Models.ApiResponseModels;

public class SelectedData<T>
{
    public int RecordsTotal { get; }

    public int RecordsFiltered { get; }

    public IReadOnlyList<T> Data { get; }

    public SelectedData(int recordsTotal, int recordsFiltered, IReadOnlyList<T> data)
    {
        RecordsTotal = recordsTotal;
        RecordsFiltered = recordsFiltered;
        Data = data;
    }
}