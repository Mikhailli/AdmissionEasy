USE [db_aa2d2]
GO

  
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'���������� (�������)')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'���������� (�������)')
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'������� ����')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'������� ����')
		END
   END

BEGIN
   IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'������')
		END
   END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'�����')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'�����')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'�������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'�������')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'��������������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'��������������')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'�����������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'�����������')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'��������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'��������')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'���������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'���������')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'���������� ����')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'���������� ����')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'����������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'����������')
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM Subjects 
                   WHERE Title = N'������/�����������')
		BEGIN
			INSERT INTO Subjects(Title)
			VALUES (N'������/�����������')
		END
END
