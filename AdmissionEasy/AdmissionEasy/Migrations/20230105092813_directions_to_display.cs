using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AdmissionEasy.Migrations
{
    /// <inheritdoc />
    public partial class directionstodisplay : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "DirectionsToDisplay",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UniversityTitle = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EducationLevelTitle = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EducationFormTitle = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Subjects = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    EducationAreaTitle = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    InstituteTitle = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Cost = table.Column<int>(type: "int", nullable: false),
                    NumberOfPlacesOnBudget = table.Column<int>(type: "int", nullable: true),
                    PassingScoreOnBudget = table.Column<int>(type: "int", nullable: true),
                    NumberOfPlacesOnPaid = table.Column<int>(type: "int", nullable: true),
                    PassingScoreOnPaid = table.Column<int>(type: "int", nullable: true),
                    Year = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DirectionsToDisplay", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "DirectionsToDisplay");
        }
    }
}
