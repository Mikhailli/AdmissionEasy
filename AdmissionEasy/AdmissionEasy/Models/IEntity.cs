namespace AdmissionEasy.Models;

public interface IEntity<T>
{
    T id { get; set; }
}