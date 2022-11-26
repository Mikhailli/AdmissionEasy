using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AdmissionEasy.Migrations
{
    /// <inheritdoc />
    public partial class fixnaming : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
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
                name: "FK_AreaOfStudies_Institutes_InstituteId",
                table: "AreaOfStudies");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudies_LevelOfEducations_LevelOfEducationId",
                table: "AreaOfStudies");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudies_AreaOfStudiesId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropForeignKey(
                name: "FK_Institutes_Universities_UniversityId",
                table: "Institute");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Universities",
                table: "University");

            migrationBuilder.DropPrimaryKey(
                name: "PK_LevelOfEducations",
                table: "LevelOfEducations");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Institutes",
                table: "Institute");

            migrationBuilder.DropPrimaryKey(
                name: "PK_FormOfEducations",
                table: "FormOfEducations");

            migrationBuilder.DropPrimaryKey(
                name: "PK_BasisOfEducations",
                table: "BasisOfEducations");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AreaOfStudies",
                table: "AreaOfStudies");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AdditionalInformationAboutAreaOfStudies",
                table: "AdditionalInformationAboutAreaOfStudies");

            migrationBuilder.RenameTable(
                name: "University",
                newName: "University");

            migrationBuilder.RenameTable(
                name: "LevelOfEducations",
                newName: "LevelOfEducation");

            migrationBuilder.RenameTable(
                name: "Institute",
                newName: "Institute");

            migrationBuilder.RenameTable(
                name: "FormOfEducations",
                newName: "FormOfEducation");

            migrationBuilder.RenameTable(
                name: "BasisOfEducations",
                newName: "BasisOfEducation");

            migrationBuilder.RenameTable(
                name: "AreaOfStudies",
                newName: "AreaOfStudy");

            migrationBuilder.RenameTable(
                name: "AdditionalInformationAboutAreaOfStudies",
                newName: "AdditionalInformationAboutAreaOfStudy");

            migrationBuilder.RenameIndex(
                name: "IX_Institutes_UniversityId",
                table: "Institute",
                newName: "IX_Institute_UniversityId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudies_LevelOfEducationId",
                table: "AreaOfStudy",
                newName: "IX_AreaOfStudy_LevelOfEducationId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudies_InstituteId",
                table: "AreaOfStudy",
                newName: "IX_AreaOfStudy_InstituteId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudies_FormOfEducationId",
                table: "AreaOfStudy",
                newName: "IX_AreaOfStudy_FormOfEducationId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudies_BasisOfEducationId",
                table: "AreaOfStudy",
                newName: "IX_AreaOfStudy_BasisOfEducationId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudies_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudy",
                newName: "IX_AreaOfStudy_AdditionalInformationAboutAreaOfStudyId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_University",
                table: "University",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_LevelOfEducation",
                table: "LevelOfEducation",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Institute",
                table: "Institute",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FormOfEducation",
                table: "FormOfEducation",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_BasisOfEducation",
                table: "BasisOfEducation",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AreaOfStudy",
                table: "AreaOfStudy",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AdditionalInformationAboutAreaOfStudy",
                table: "AdditionalInformationAboutAreaOfStudy",
                column: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudy_AdditionalInformationAboutAreaOfStudy_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudy",
                column: "AdditionalInformationAboutAreaOfStudyId",
                principalTable: "AdditionalInformationAboutAreaOfStudy",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudy_BasisOfEducation_BasisOfEducationId",
                table: "AreaOfStudy",
                column: "BasisOfEducationId",
                principalTable: "BasisOfEducation",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudy_FormOfEducation_FormOfEducationId",
                table: "AreaOfStudy",
                column: "FormOfEducationId",
                principalTable: "FormOfEducation",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudy_Institute_InstituteId",
                table: "AreaOfStudy",
                column: "InstituteId",
                principalTable: "Institute",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudy_LevelOfEducation_LevelOfEducationId",
                table: "AreaOfStudy",
                column: "LevelOfEducationId",
                principalTable: "LevelOfEducation",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudy_AreaOfStudiesId",
                table: "AreaOfStudySubject",
                column: "AreaOfStudiesId",
                principalTable: "AreaOfStudy",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Institute_University_UniversityId",
                table: "Institute",
                column: "UniversityId",
                principalTable: "University",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudy_AdditionalInformationAboutAreaOfStudy_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudy");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudy_BasisOfEducation_BasisOfEducationId",
                table: "AreaOfStudy");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudy_FormOfEducation_FormOfEducationId",
                table: "AreaOfStudy");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudy_Institute_InstituteId",
                table: "AreaOfStudy");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudy_LevelOfEducation_LevelOfEducationId",
                table: "AreaOfStudy");

            migrationBuilder.DropForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudy_AreaOfStudiesId",
                table: "AreaOfStudySubject");

            migrationBuilder.DropForeignKey(
                name: "FK_Institute_University_UniversityId",
                table: "Institute");

            migrationBuilder.DropPrimaryKey(
                name: "PK_University",
                table: "University");

            migrationBuilder.DropPrimaryKey(
                name: "PK_LevelOfEducation",
                table: "LevelOfEducation");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Institute",
                table: "Institute");

            migrationBuilder.DropPrimaryKey(
                name: "PK_FormOfEducation",
                table: "FormOfEducation");

            migrationBuilder.DropPrimaryKey(
                name: "PK_BasisOfEducation",
                table: "BasisOfEducation");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AreaOfStudy",
                table: "AreaOfStudy");

            migrationBuilder.DropPrimaryKey(
                name: "PK_AdditionalInformationAboutAreaOfStudy",
                table: "AdditionalInformationAboutAreaOfStudy");

            migrationBuilder.RenameTable(
                name: "University",
                newName: "University");

            migrationBuilder.RenameTable(
                name: "LevelOfEducation",
                newName: "LevelOfEducations");

            migrationBuilder.RenameTable(
                name: "Institute",
                newName: "Institute");

            migrationBuilder.RenameTable(
                name: "FormOfEducation",
                newName: "FormOfEducations");

            migrationBuilder.RenameTable(
                name: "BasisOfEducation",
                newName: "BasisOfEducations");

            migrationBuilder.RenameTable(
                name: "AreaOfStudy",
                newName: "AreaOfStudies");

            migrationBuilder.RenameTable(
                name: "AdditionalInformationAboutAreaOfStudy",
                newName: "AdditionalInformationAboutAreaOfStudies");

            migrationBuilder.RenameIndex(
                name: "IX_Institute_UniversityId",
                table: "Institute",
                newName: "IX_Institutes_UniversityId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudy_LevelOfEducationId",
                table: "AreaOfStudies",
                newName: "IX_AreaOfStudies_LevelOfEducationId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudy_InstituteId",
                table: "AreaOfStudies",
                newName: "IX_AreaOfStudies_InstituteId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudy_FormOfEducationId",
                table: "AreaOfStudies",
                newName: "IX_AreaOfStudies_FormOfEducationId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudy_BasisOfEducationId",
                table: "AreaOfStudies",
                newName: "IX_AreaOfStudies_BasisOfEducationId");

            migrationBuilder.RenameIndex(
                name: "IX_AreaOfStudy_AdditionalInformationAboutAreaOfStudyId",
                table: "AreaOfStudies",
                newName: "IX_AreaOfStudies_AdditionalInformationAboutAreaOfStudyId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Universities",
                table: "University",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_LevelOfEducations",
                table: "LevelOfEducations",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Institutes",
                table: "Institute",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FormOfEducations",
                table: "FormOfEducations",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_BasisOfEducations",
                table: "BasisOfEducations",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AreaOfStudies",
                table: "AreaOfStudies",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_AdditionalInformationAboutAreaOfStudies",
                table: "AdditionalInformationAboutAreaOfStudies",
                column: "Id");

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
                name: "FK_AreaOfStudies_Institutes_InstituteId",
                table: "AreaOfStudies",
                column: "InstituteId",
                principalTable: "Institute",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudies_LevelOfEducations_LevelOfEducationId",
                table: "AreaOfStudies",
                column: "LevelOfEducationId",
                principalTable: "LevelOfEducations",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AreaOfStudySubject_AreaOfStudies_AreaOfStudiesId",
                table: "AreaOfStudySubject",
                column: "AreaOfStudiesId",
                principalTable: "AreaOfStudies",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Institutes_Universities_UniversityId",
                table: "Institute",
                column: "UniversityId",
                principalTable: "University",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
