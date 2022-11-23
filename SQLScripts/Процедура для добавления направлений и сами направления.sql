USE [AdmissionEasy]
GO

CREATE PROCEDURE AddAreaOfStudy @institute_id int, @area_title nvarchar(2048)
AS  
   BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudies 
                   WHERE Title = @area_title
				   AND InstituteId = @institute_id)
		BEGIN
			INSERT INTO AreaOfStudies(Title, InstituteId)
			VALUES (@area_title, @institute_id)
		END
END
RETURN
GO

EXECUTE AddAreaOfStudy 3, N'Автоматизация технологических процессов и производств'
EXECUTE AddAreaOfStudy 3, N'Информатика и вычислительная техника'
EXECUTE AddAreaOfStudy 3, N'Информационная безопасность'
EXECUTE AddAreaOfStudy 3, N'Информационная безопасность автоматизированных систем'
EXECUTE AddAreaOfStudy 3, N'Информационные системы и технологии'
EXECUTE AddAreaOfStudy 3, N'Компьютерная безопасность'
EXECUTE AddAreaOfStudy 3, N'Прикладная информатика'
EXECUTE AddAreaOfStudy 3, N'Прикладная математика'
EXECUTE AddAreaOfStudy 3, N'Программная инженерия'
EXECUTE AddAreaOfStudy 3, N'Системный анализ и управление'
EXECUTE AddAreaOfStudy 3, N'Управление в технических системах'