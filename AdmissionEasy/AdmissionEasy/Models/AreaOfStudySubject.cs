namespace AdmissionEasy.Models
{
    public class AreaOfStudySubject : Entity<int>
    {
        public virtual AreaOfStudy AreaOfStudy { get; set; }
        public virtual int AreaOfStudyId { get; set; }

        public virtual Subject Subject { get; set; }


        public virtual int SubjectId { get; set; }
    }
}
