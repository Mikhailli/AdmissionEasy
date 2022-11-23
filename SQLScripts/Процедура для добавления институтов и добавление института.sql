USE [AdmissionEasy]
GO

CREATE PROCEDURE AddInstitute @university_id INT, @institute_title nvarchar(2048)
AS  
   BEGIN
   IF NOT EXISTS (SELECT * FROM Institutes 
                   WHERE UniversityId = @university_id
                   AND Title = @institute_title)
		BEGIN
			INSERT INTO Institutes(UniversityId, Title)
			VALUES (@university_id, @institute_title)
		END
END
RETURN
GO

EXECUTE AddInstitute 1, N'Институт космических и информационных технологий'
