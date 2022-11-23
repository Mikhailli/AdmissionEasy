namespace AdmissionEasy.Models;

public class Institute : Entity<int>
{
    public int Id { get; set; }
    public string Title { get; set; }
    public int UniversityId { get; set; }
    public University University { get; set; }
}