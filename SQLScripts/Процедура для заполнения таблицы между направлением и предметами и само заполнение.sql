USE [AdmissionEasy]
GO

CREATE PROCEDURE AddAreaOfStudySubject @AreaOfStudy_id int, @Subject_id int
AS  
   BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = @AreaOfStudy_id
				   AND SubjectsId = @Subject_id)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (@AreaOfStudy_id, @Subject_id)
		END
END
RETURN
GO

EXECUTE AddAreaOfStudySubject 1, 1
EXECUTE AddAreaOfStudySubject 1, 2
EXECUTE AddAreaOfStudySubject 1, 12
EXECUTE AddAreaOfStudySubject 2, 1
EXECUTE AddAreaOfStudySubject 2, 2
EXECUTE AddAreaOfStudySubject 2, 12
EXECUTE AddAreaOfStudySubject 3, 1
EXECUTE AddAreaOfStudySubject 3, 2
EXECUTE AddAreaOfStudySubject 3, 12
EXECUTE AddAreaOfStudySubject 4, 1
EXECUTE AddAreaOfStudySubject 4, 2
EXECUTE AddAreaOfStudySubject 4, 12
EXECUTE AddAreaOfStudySubject 5, 1
EXECUTE AddAreaOfStudySubject 5, 2
EXECUTE AddAreaOfStudySubject 5, 12
EXECUTE AddAreaOfStudySubject 6, 1
EXECUTE AddAreaOfStudySubject 6, 2
EXECUTE AddAreaOfStudySubject 6, 12
EXECUTE AddAreaOfStudySubject 7, 1
EXECUTE AddAreaOfStudySubject 7, 2
EXECUTE AddAreaOfStudySubject 7, 12
EXECUTE AddAreaOfStudySubject 8, 1
EXECUTE AddAreaOfStudySubject 8, 2
EXECUTE AddAreaOfStudySubject 8, 12
EXECUTE AddAreaOfStudySubject 9, 1
EXECUTE AddAreaOfStudySubject 9, 2
EXECUTE AddAreaOfStudySubject 9, 12
EXECUTE AddAreaOfStudySubject 10, 1
EXECUTE AddAreaOfStudySubject 10, 2
EXECUTE AddAreaOfStudySubject 10, 12
EXECUTE AddAreaOfStudySubject 11, 1
EXECUTE AddAreaOfStudySubject 11, 2
EXECUTE AddAreaOfStudySubject 11, 12