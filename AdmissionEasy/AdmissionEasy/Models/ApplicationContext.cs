#nullable enable
using Microsoft.EntityFrameworkCore;


namespace AdmissionEasy.Models
{
    public sealed class ApplicationContext : DbContext
    {
        public DbSet<University> Universities { get; set; }
        public DbSet<Institute> Institutes { get; set; }
        public DbSet<AreaOfStudy> AreaOfStudies { get; set; }
        public DbSet<Subject> Subjects { get; set; }

        public ApplicationContext(DbContextOptions<ApplicationContext> options)
            : base(options)
        {
            
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) =>
            optionsBuilder.UseChangeTrackingProxies().UseSqlServer("Server=217.28.223.127,17160;User Id=user_63d89;Password=w-2BE3n?*R;Database=db_aa2d2;TrustServerCertificate=True");
        
    }
}