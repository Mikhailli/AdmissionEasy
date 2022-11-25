#nullable enable
using System.Collections.ObjectModel;

namespace AdmissionEasy.Models;

public class Subject : Entity<int>
{
    public virtual string Title { get; set; }
}