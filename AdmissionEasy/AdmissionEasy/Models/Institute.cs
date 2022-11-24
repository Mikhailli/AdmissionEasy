#nullable enable

namespace AdmissionEasy.Models;

public class Institute : Entity<int>
{
    public virtual string Title { get; set; }
    public virtual int UniversityId { get; set; }
    public virtual University University { get; set; }
}