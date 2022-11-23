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

EXECUTE AddSubject N'���������� (�������)'
EXECUTE AddSubject N'������� ����'
EXECUTE AddSubject N'������'
EXECUTE AddSubject N'�����'
EXECUTE AddSubject N'�������'
EXECUTE AddSubject N'��������������'
EXECUTE AddSubject N'�����������'
EXECUTE AddSubject N'��������'
EXECUTE AddSubject N'���������'
EXECUTE AddSubject N'���������� ����'
EXECUTE AddSubject N'����������'
EXECUTE AddSubject N'������/�����������'