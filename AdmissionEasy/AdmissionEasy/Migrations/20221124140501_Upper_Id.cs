using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AdmissionEasy.Migrations
{
    /// <inheritdoc />
    public partial class UpperId : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudies_AreaOfStudiesid",
                table: "AreaOfStudySubject");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_Subjectsid",
                table: "AreaOfStudySubject");

            migrationBuilder.RenameColumn(
                name: "id",
                table: "University",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "id",
                table: "Subjects",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "id",
                table: "Institute",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "Subjectsid",
                table: "AreaOfStudySubject",
                newName: "SubjectsId");

            migrationBuilder.RenameColumn(
                name: "AreaOfStudiesid",
                table: "AreaOfStudySubject",
                newName: "AreaOfStudiesId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudySubject_Subjectsid",
                table: "AreaOfStudySubject",
                newName: "IX_AreaOfStudySubject_SubjectsId");

            migrationBuilder.RenameColumn(
                name: "id",
                table: "AreaOfStudies",
                newName: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudies_AreaOfStudiesId",
                table: "AreaOfStudySubject",
                column: "AreaOfStudiesId",
                principalTable: "AreaOfStudies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_SubjectsId",
                table: "AreaOfStudySubject",
                column: "SubjectsId",
                principalTable: "Subjects",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudies_AreaOfStudiesId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_SubjectsId",
                table: "AreaOfStudySubject");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "University",
                newName: "id");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Subjects",
                newName: "id");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Institute",
                newName: "id");

            migrationBuilder.RenameColumn(
                name: "SubjectsId",
                table: "AreaOfStudySubject",
                newName: "Subjectsid");

            migrationBuilder.RenameColumn(
                name: "AreaOfStudiesId",
                table: "AreaOfStudySubject",
                newName: "AreaOfStudiesid");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudySubject_SubjectsId",
                table: "AreaOfStudySubject",
                newName: "IX_AreaOfStudySubject_Subjectsid");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "AreaOfStudies",
                newName: "id");

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudies_AreaOfStudiesid",
                table: "AreaOfStudySubject",
                column: "AreaOfStudiesid",
                principalTable: "AreaOfStudies",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_Subjectsid",
                table: "AreaOfStudySubject",
                column: "Subjectsid",
                principalTable: "Subjects",
                principalColumn: "id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
