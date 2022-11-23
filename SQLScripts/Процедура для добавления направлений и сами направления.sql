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

EXECUTE AddAreaOfStudy 3, N'������������� ��������������� ��������� � �����������'
EXECUTE AddAreaOfStudy 3, N'����������� � �������������� �������'
EXECUTE AddAreaOfStudy 3, N'�������������� ������������'
EXECUTE AddAreaOfStudy 3, N'�������������� ������������ ������������������ ������'
EXECUTE AddAreaOfStudy 3, N'�������������� ������� � ����������'
EXECUTE AddAreaOfStudy 3, N'������������ ������������'
EXECUTE AddAreaOfStudy 3, N'���������� �����������'
EXECUTE AddAreaOfStudy 3, N'���������� ����������'
EXECUTE AddAreaOfStudy 3, N'����������� ���������'
EXECUTE AddAreaOfStudy 3, N'��������� ������ � ����������'
EXECUTE AddAreaOfStudy 3, N'���������� � ����������� ��������'