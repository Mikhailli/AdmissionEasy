using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AdmissionEasy.Migrations
{
    /// <inheritdoc />
    public partial class updatedbstructure : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "BasisOfEducationId",
                table: "AreaOfStudies",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "FormOfEducationId",
                table: "AreaOfStudies",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "LevelOfEducationId",
                table: "AreaOfStudies",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "AdditionalInformationAboutAreaOfStudies",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Cost = table.Column<int>(type: "int", nullable: false),
                    NumberOfPlacesOnBudget = table.Column<int>(type: "int", nullable: true),
                    PassingScoreOnBudget = table.Column<int>(type: "int", nullable: true),
                    NumberOfPlacesOnPaid = table.Column<int>(type: "int", nullable: true),
                    PassingScoreOnPaid = table.Column<int>(type: "int", nullable: true),
                    Year = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AdditionalInformationAboutAreaOfStudies", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "BasisOfEducations",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BasisOfEducations", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "FormOfEducations",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FormOfEducations", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "LevelOfEducations",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LevelOfEducations", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AreaOfStudies_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies",
                column: "AdditionalInformationAboutAreaOfStudyId");

            migrationBuilder.CreateIndex(
                name: "IX_AreaOfStudies_BasisOfEducationId",
                table: "AreaOfStudies",
                column: "BasisOfEducationId");

            migrationBuilder.CreateIndex(
                name: "IX_AreaOfStudies_FormOfEducationId",
                table: "AreaOfStudies",
                column: "FormOfEducationId");

            migrationBuilder.CreateIndex(
                name: "IX_AreaOfStudies_LevelOfEducationId",
                table: "AreaOfStudies",
                column: "LevelOfEducationId");

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudies_AdditionalInformationAboutAreaOfStudies_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies",
                column: "AdditionalInformationAboutAreaOfStudyId",
                principalTable: "AdditionalInformationAboutAreaOfStudies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudies_BasisOfEducations_BasisOfEducationId",
                table: "AreaOfStudies",
                column: "BasisOfEducationId",
                principalTable: "BasisOfEducations",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudies_FormOfEducations_FormOfEducationId",
                table: "AreaOfStudies",
                column: "FormOfEducationId",
                principalTable: "FormOfEducations",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudies_LevelOfEducations_LevelOfEducationId",
                table: "AreaOfStudies",
                column: "LevelOfEducationId",
                principalTable: "LevelOfEducations",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudies_AdditionalInformationAboutAreaOfStudies_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudies_BasisOfEducations_BasisOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudies_FormOfEducations_FormOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudies_LevelOfEducations_LevelOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropTable(
                name: "AdditionalInformationAboutAreaOfStudies");

            migrationBuilder.DropTable(
                name: "BasisOfEducations");

            migrationBuilder.DropTable(
                name: "FormOfEducations");

            migrationBuilder.DropTable(
                name: "LevelOfEducations");

            migrationBuilder.DropIndex(
                name: "IX_AreaOfStudies_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies");

            migrationBuilder.DropIndex(
                name: "IX_AreaOfStudies_BasisOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropIndex(
                name: "IX_AreaOfStudies_FormOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropIndex(
                name: "IX_AreaOfStudies_LevelOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropColumn(
                name: "AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies");

            migrationBuilder.DropColumn(
                name: "BasisOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropColumn(
                name: "FormOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropColumn(
                name: "LevelOfEducationId",
                table: "AreaOfStudies");
        }
    }
}
