#nullable enable
namespace AdmissionEasy.Data.Domain.Interfaces;

public interface IEntity<T>
{
    T Id { get; set; }
}