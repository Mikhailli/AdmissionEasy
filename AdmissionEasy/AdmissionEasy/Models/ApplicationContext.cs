#nullable enable
using Microsoft.EntityFrameworkCore;

namespace AdmissionEasy.Models;

public sealed class ApplicationContext : DbContext
{
    public DbSet<University> University { get; set; } = null!;
    public DbSet<Institute> Institute { get; set; } = null!;
    public DbSet<AreaOfStudy> AreaOfStudy { get; set; } = null!;
    public DbSet<Subject> Subjects { get; set; } = null!;
    public DbSet<LevelOfEducation> LevelOfEducation { get; set; } = null!;
    public DbSet<FormOfEducation> FormOfEducation { get; set; } = null!;
    public DbSet<AdditionalInformationAboutAreaOfStudy> AdditionalInformationAboutAreaOfStudy { get; set; } = null!;
    public DbSet<AreaOfStudySubject> AreaOfStudySubject { get; set; } = null!;
    public DbSet<DirectionsToDisplay> DirectionsToDisplay { get; set; } = null!;

    public ApplicationContext(DbContextOptions<ApplicationContext> options)
        : base(options)
    {
            
    }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) =>
        optionsBuilder.UseSqlServer("Server=217.28.223.127,17160;User Id=user_63d89;Password=w-2BE3n?*R;Database=db_aa2d2;TrustServerCertificate=True");
        
}