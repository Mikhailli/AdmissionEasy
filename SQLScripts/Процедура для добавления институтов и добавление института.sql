USE [db_aa2d2]
GO


BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ����������� � �������������� ����������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ����������� � �������������� ����������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ������� �������� � ����������������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ������� �������� � ����������������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ����������� � �������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ����������� � �������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ���������� ������-���������� � ���������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ���������� ������-���������� � ���������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ��������������� �������� � �������������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ��������������� �������� � �������������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� �������� � ���������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� �������� � ���������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������-������������� ��������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������-������������� ��������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ���������, ���������� � ������������������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ���������, ���������� � ������������������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'������������ ��������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'������������ ��������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ��������� � �������� ������������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ��������� � �������� ������������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ���������� ������ � ����������������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ���������� ������ � ����������������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'��������������� ��������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'��������������� ��������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ���������� � ��������������� �����������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ���������� � ��������������� �����������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'����������� ��������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'����������� ��������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� �����������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� �����������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'������-���������� ��������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'������-���������� ��������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ����� � ����')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ����� � ����')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ����������, ���������� � ����������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ����������, ���������� � ����������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ���������� ��������, ������ � �������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ���������� ��������, ������ � �������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'�������� ������� ����, �������� � �������������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'�������� ������� ����, �������� � �������������')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'���������-������������ ��������')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'���������-������������ ��������')
		END
END

