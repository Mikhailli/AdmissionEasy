#nullable enable
namespace AdmissionEasy.Models;

public class University : Entity<int>
{
    public virtual string Title { get; set; }
}