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
            Database.EnsureCreated();
        }
    }
}