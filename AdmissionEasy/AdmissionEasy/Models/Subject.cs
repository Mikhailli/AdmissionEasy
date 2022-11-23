namespace AdmissionEasy.Models;

public class Subject
{
    public int Id { get; set; }
    public string Title { get; set; }
    public IList<AreaOfStudy> AreaOfStudies { get; } = new List<AreaOfStudy>();
}