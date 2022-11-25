USE [db_aa2d2]
GO


BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт космических и информационных технологий')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт космических и информационных технологий')
		END
END

