USE db_aa2d2
GO
  
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'������������� ��������������� ��������� � �����������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 1 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'������������� ��������������� ��������� � �����������', 1, 1, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'�������������� ������������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 3 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'�������������� ������������', 1, 3, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'����������� � �������������� �������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 2 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'����������� � �������������� �������', 1, 2, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'�������������� ������������ ������������������ ������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 4 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 2)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'�������������� ������������ ������������������ ������', 1, 4, 1, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'�������������� ������� � ����������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 5 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'�������������� ������� � ����������', 1, 5, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'������������ ������������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 6 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'������������ ������������', 1, 6, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'���������� �����������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 7 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'���������� �����������', 1, 7, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'���������� ����������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 8 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'���������� ����������', 1, 8, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'����������� ���������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 9 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'����������� ���������', 1, 9, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'��������� ������ � ����������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 10 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'��������� ������ � ����������', 1, 10, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'���������� � ����������� ��������'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 11 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'���������� � ����������� ��������', 1, 11, 1, 1)
		END
END