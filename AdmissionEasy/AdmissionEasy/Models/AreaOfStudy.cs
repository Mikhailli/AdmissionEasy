#nullable enable
namespace AdmissionEasy.Models;

public class AreaOfStudy : Entity<int>
{
    public virtual string Title { get; set; }
    public virtual int InstituteId { get; set; }
    public virtual Institute Institute { get; set; }
    public virtual IEnumerable<Subject> Subjects { get; } = new List<Subject>();
}