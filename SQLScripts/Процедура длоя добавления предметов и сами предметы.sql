USE [AdmissionEasy]
GO

CREATE PROCEDURE AddSubject @subject_title nvarchar(2048)
AS  
   BEGIN
   IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = @subject_title)
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (@subject_title)
		END
END
RETURN
GO

EXECUTE AddSubject N'Математика (профиль)'
EXECUTE AddSubject N'Русский язык'
EXECUTE AddSubject N'Физика'
EXECUTE AddSubject N'Химия'
EXECUTE AddSubject N'История'
EXECUTE AddSubject N'Обществознание'
EXECUTE AddSubject N'Информатика'
EXECUTE AddSubject N'Биология'
EXECUTE AddSubject N'География'
EXECUTE AddSubject N'Английский язык'
EXECUTE AddSubject N'Литература'
EXECUTE AddSubject N'Физика/информатика'