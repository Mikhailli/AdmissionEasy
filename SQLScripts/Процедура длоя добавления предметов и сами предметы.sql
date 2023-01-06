USE [db_aa2d2]
GO

BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Вступительные')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Вступительные')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика/обществознание')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика/обществознание')
		END
END
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
                   WHERE Title = N'Обществознание/информатика/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/информатика/иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика/география')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика/география')
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
                   WHERE Title = N'Обществознание/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/иностранный язык')
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
                   WHERE Title = N'Литература')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Литература')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика/биология')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика/биология')
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
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика/история')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика/история')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Информатика/география/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Информатика/география/иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Обществознание/история')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/история')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Обществознание/биология/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/биология/иностранный язык')
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
                   WHERE Title = N'Биология')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Биология')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'История/информатика/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'История/информатика/иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Обществознание/литература')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/литература')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика/информатика')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика/информатика')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'История/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'История/иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Физика/химия/информатика')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Физика/химия/информатика')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Математика/химия')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Математика/химия')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Обществознание/история/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/история/иностранный язык')
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
                   WHERE Title = N'Обществознание/история/литература')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Обществознание/история/литература')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Русский')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Русский')
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
                   WHERE Title = N'Физика/информатика/иностранный язык')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Физика/информатика/иностранный язык')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'Русский')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'Русский')
		END
END
