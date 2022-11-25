using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AdmissionEasy.Migrations
{
    /// <inheritdoc />
    public partial class Manytomany : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudy_AreaOfStudiesId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_SubjectsId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AreaOfStudySubject",
                table: "AreaOfStudySubject");

            migrationBuilder.RenameColumn(
                name: "SubjectsId",
                table: "AreaOfStudySubject",
                newName: "SubjectId");

            migrationBuilder.RenameColumn(
                name: "AreaOfStudiesId",
                table: "AreaOfStudySubject",
                newName: "AreaOfStudyId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudySubject_SubjectsId",
                table: "AreaOfStudySubject",
                newName: "IX_AreaOfStudySubject_SubjectId");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "AreaOfStudySubject",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AreaOfStudySubject",
                table: "AreaOfStudySubject",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_AreaOfStudySubject_AreaOfStudyId",
                table: "AreaOfStudySubject",
                column: "AreaOfStudyId");

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudy_AreaOfStudyId",
                table: "AreaOfStudySubject",
                column: "AreaOfStudyId",
                principalTable: "AreaOfStudy",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_SubjectId",
                table: "AreaOfStudySubject",
                column: "SubjectId",
                principalTable: "Subjects",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudy_AreaOfStudyId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_Subjects_SubjectId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AreaOfStudySubject",
                table: "AreaOfStudySubject");

            migrationBuilder.DropIndex(
                name: "IX_AreaOfStudySubject_AreaOfStudyId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "AreaOfStudySubject");

            migrationBuilder.RenameColumn(
                name: "SubjectId",
                table: "AreaOfStudySubject",
                newName: "SubjectsId");

            migrationBuilder.RenameColumn(
                name: "AreaOfStudyId",
                table: "AreaOfStudySubject",
                newName: "AreaOfStudiesId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudySubject_SubjectId",
                table: "AreaOfStudySubject",
                newName: "IX_AreaOfStudySubject_SubjectsId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AreaOfStudySubject",
                table: "AreaOfStudySubject",
                columns: new[] { "AreaOfStudiesId", "SubjectsId" });

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudy_AreaOfStudiesId",
                table: "AreaOfStudySubject",
                column: "AreaOfStudiesId",
                principalTable: "AreaOfStudy",
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
    }
}
