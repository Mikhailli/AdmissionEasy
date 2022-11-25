#nullable enable

namespace AdmissionEasy.Models;

public class Subject : Entity<int>
{
    public virtual string Title { get; set; }
}