#nullable enable
namespace AdmissionEasy.Models
{
    public class AdditionalInformationAboutAreaOfStudy : Entity<int>
    {
        public virtual int Cost { get; set; }
        public virtual int? NumberOfPlacesOnBudget { get; set; }
        public virtual int? PassingScoreOnBudget { get; set; }
        public virtual int? NumberOfPlacesOnPaid { get; set; }
        public virtual int? PassingScoreOnPaid { get; set; }
        public virtual int Year { get; set; }
    }
}
