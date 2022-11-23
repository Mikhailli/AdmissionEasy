namespace AdmissionEasy.Models;

public class AreaOfStudy
{
    public int Id { get; set; }
    public string Title { get; set; }
    public int InstituteId { get; set; }
    public Institute Institute { get; set; }
    public IList<Subject> Subjects { get; } = new List<Subject>();
}