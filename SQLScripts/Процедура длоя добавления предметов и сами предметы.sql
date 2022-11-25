USE [db_aa2d2]
GO

  
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика (профиль)')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика (профиль)')
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Русский язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Русский язык')
		END
   END

BEGIN
   IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Физика')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Физика')
		END
   END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Химия')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Химия')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'История')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'История')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Обществознание')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Информатика')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Информатика')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Биология')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Биология')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'География')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'География')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Английский язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Английский язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Литература')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Литература')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Физика/информатика')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Физика/информатика')
		END
END
