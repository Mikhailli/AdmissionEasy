#nullable enable
using System.ComponentModel.DataAnnotations;

namespace AdmissionEasy.Data.Domain.Interfaces;

public abstract class BaseEntity
{
    
}

public abstract class Entity<T> : BaseEntity, IEntity<T>
{
    [Key] public virtual T Id { get; set; } = default!;
}