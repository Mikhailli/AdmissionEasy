#nullable enable
using Microsoft.EntityFrameworkCore;


namespace AdmissionEasy.Models
{
    public sealed class ApplicationContext : DbContext
    {
        public DbSet<University> University { get; set; }
        public DbSet<Institute> Institute { get; set; }
        public DbSet<AreaOfStudy> AreaOfStudy { get; set; }
        public DbSet<Subject> Subjects { get; set; }
        public DbSet<LevelOfEducation> LevelOfEducation { get; set; }
        public DbSet<FormOfEducation> FormOfEducation { get; set; }
        public DbSet<AdditionalInformationAboutAreaOfStudy> AdditionalInformationAboutAreaOfStudy { get; set; }
        public DbSet<AreaOfStudySubject> AreaOfStudySubject { get; set; }

        public ApplicationContext(DbContextOptions<ApplicationContext> options)
            : base(options)
        {
            
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) =>
            optionsBuilder.UseSqlServer("Server=217.28.223.127,17160;User Id=user_63d89;Password=w-2BE3n?*R;Database=db_aa2d2;TrustServerCertificate=True");
        
    }
}