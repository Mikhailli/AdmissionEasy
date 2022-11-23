using System.ComponentModel.DataAnnotations;

namespace AdmissionEasy.Models;

public abstract class BaseEntity
{
    
}

public abstract class Entity<T> : BaseEntity, IEntity<T>
{
    [Key] 
    public virtual T id { get; set; }
}