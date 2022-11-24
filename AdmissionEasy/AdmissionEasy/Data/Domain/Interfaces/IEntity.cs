#nullable enable
namespace AdmissionEasy.Models;

public interface IEntity<T>
{
    T Id { get; set; }
}