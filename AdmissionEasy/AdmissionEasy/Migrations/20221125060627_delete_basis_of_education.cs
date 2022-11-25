using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AdmissionEasy.Migrations
{
    /// <inheritdoc />
    public partial class deletebasisofeducation : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudy_BasisOfEducation_BasisOfEducationId",
                table: "AreaOfStudy");

            migrationBuilder.DropTable(
                name: "BasisOfEducation");

            migrationBuilder.DropIndex(
                name: "IX_AreaOfStudy_BasisOfEducationId",
                table: "AreaOfStudy");

            migrationBuilder.DropColumn(
                name: "BasisOfEducationId",
                table: "AreaOfStudy");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "BasisOfEducationId",
                table: "AreaOfStudy",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "BasisOfEducation",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_BasisOfEducation", x => x.Id);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AreaOfStudy_BasisOfEducationId",
                table: "AreaOfStudy",
                column: "BasisOfEducationId");

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudy_BasisOfEducation_BasisOfEducationId",
                table: "AreaOfStudy",
                column: "BasisOfEducationId",
                principalTable: "BasisOfEducation",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
