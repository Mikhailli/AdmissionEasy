#nullable enable
using AdmissionEasy.Data.Implementation.SpecificRepositories;
using AdmissionEasy.Models;

namespace AdmissionEasy.Controllers
{
    public static class ViewDataDictionaryExtensions
    {
        public static dynamic SetViewBug(dynamic viewBug, ApplicationContext db)
        { 
            SetViewBugForUniversities(viewBug, db);
            SetViewBugForLevelsOfEducation(viewBug, db);
            SetViewBugForAdditionalInformationAboutAreaOfStudy(viewBug, db);
            SetViewBugForAreasOfStudy(viewBug, db);
            SetViewBugForFormsOfEducation(viewBug, db);
            SetViewBugForInstitutes(viewBug, db);
            SetViewBugForSubjects(viewBug, db);

            return viewBug;
        }

        public static dynamic SetViewBugForUniversities(dynamic viewBug, ApplicationContext db)
        {
            viewBug.Universities = new EFUniversityRepository(db).GetAll();
            return viewBug;
        }

        public static dynamic SetViewBugForLevelsOfEducation(dynamic viewBug, ApplicationContext db)
        {
            viewBug.LevelsOfEducation = new EFLevelOfEducationRepository(db).GetAll();
            return viewBug;
        }

        public static dynamic SetViewBugForAdditionalInformationAboutAreaOfStudy(dynamic viewBug, ApplicationContext db)
        {
            viewBug.AdditionalInformationAboutAreaOfStudy = new EFAdditionalInformationAboutAreaOfStudyRepository(db).GetAll();
            return viewBug;
        }

        public static dynamic SetViewBugForAreasOfStudy(dynamic viewBug, ApplicationContext db)
        {
            viewBug.AreasOfStudy = new EFAreaOfStudyRepository(db).GetAll();
            return viewBug;
        }

        public static dynamic SetViewBugForFormsOfEducation(dynamic viewBug, ApplicationContext db)
        {
            viewBug.FormsOfEducation = new EFFormOfEducationRepository(db).GetAll();
            return viewBug;
        }

        public static dynamic SetViewBugForInstitutes(dynamic viewBug, ApplicationContext db)
        {
            viewBug.Institutes = new EFInstituteRepository(db).GetAll();
            return viewBug;
        }

        public static dynamic SetViewBugForSubjects(dynamic viewBug, ApplicationContext db)
        {
            viewBug.Subjects = new EFSubjectRepository(db).GetAll();
            return viewBug;
        }
    }
}
