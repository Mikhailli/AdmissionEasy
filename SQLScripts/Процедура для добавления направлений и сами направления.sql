USE db_aa2d2
GO
  
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Автоматизация технологических процессов и производств'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 1 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Автоматизация технологических процессов и производств', 1, 1, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Информационная безопасность'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 3 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информационная безопасность', 1, 3, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Информатика и вычислительная техника'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 2 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информатика и вычислительная техника', 1, 2, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Информационная безопасность автоматизированных систем'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 4 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 2)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информационная безопасность автоматизированных систем', 1, 4, 1, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Информационные системы и технологии'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 5 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информационные системы и технологии', 1, 5, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Компьютерная безопасность'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 6 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Компьютерная безопасность', 1, 6, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Прикладная информатика'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 7 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Прикладная информатика', 1, 7, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Прикладная математика'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 8 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Прикладная математика', 1, 8, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Программная инженерия'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 9 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Программная инженерия', 1, 9, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Системный анализ и управление'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 10 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Системный анализ и управление', 1, 10, 1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudy 
                   WHERE Title = N'Управление в технических системах'
				   AND InstituteId = 1
				   And AdditionalInformationAboutAreaOfStudyId = 11 
				   AND FormOfEducationId = 1
				   AND LevelOfEducationId = 1)
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, 
			FormOfEducationId, LevelOfEducationId)
			VALUES (N'Управление в технических системах', 1, 11, 1, 1)
		END
END