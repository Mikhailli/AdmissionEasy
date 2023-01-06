USE [db_aa2d2]
GO

declare @id int

BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 45 and
				   PassingScoreOnBudget = 171 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   ([Year] = 2022 or [Year] = 2023))
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 45, 171, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Автоматизация технологических процессов и производств' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Автоматизация технологических процессов и производств', (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 33 and
				   PassingScoreOnBudget = 335 and
				   NumberOfPlacesOnPaid = 10 and
				   PassingScoreOnPaid = 225 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 33, 335, 10, 225, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Архитектура' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Архитектура', (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 14 and
				   PassingScoreOnBudget = 241 and
				   NumberOfPlacesOnPaid = 45 and
				   PassingScoreOnPaid = 148 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 14, 241, 45, 148, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Бизнес-информатика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт управления бизнес-процессами и экономики') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Бизнес-информатика', (SELECT Id FROM Institute WHERE Title = N'Институт управления бизнес-процессами и экономики'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 100 and
				   PassingScoreOnBudget = 179 and
				   NumberOfPlacesOnPaid = 10 and
				   PassingScoreOnPaid = 143 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 100, 179, 10, 143, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Биология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт фундаментальной биологии и биотехнологии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Биология', (SELECT Id FROM Institute WHERE Title = N'Институт фундаментальной биологии и биотехнологии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 23 and
				   PassingScoreOnBudget = 124 and
				   NumberOfPlacesOnPaid = 4 and
				   PassingScoreOnPaid = 119 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 23, 124, 4, 119, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'География' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт экологии и географии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'География', (SELECT Id FROM Institute WHERE Title = N'Институт экологии и географии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 48804 and
				   NumberOfPlacesOnBudget = 170 and
				   PassingScoreOnBudget = 122 and
				   NumberOfPlacesOnPaid = 21 and
				   PassingScoreOnPaid = 119 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (48804, 170, 122, 21, 119, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Горное дело' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Горное дело', (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 19 and
				   PassingScoreOnBudget = 230 and
				   NumberOfPlacesOnPaid = 6 and
				   PassingScoreOnPaid = 143 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 19, 230, 6, 143, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Гостиничное дело' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Гостиничное дело', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 12 and
				   PassingScoreOnBudget = 228 and
				   NumberOfPlacesOnPaid = 40 and
				   PassingScoreOnPaid = 132 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 12, 228, 40, 132, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Государственное и муниципальное управление' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Государственное и муниципальное управление', (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 28 and
				   PassingScoreOnBudget = 222 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 178 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 28, 222, 5, 178, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Градостроительство' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Градостроительство', (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 304224 and
				   NumberOfPlacesOnBudget = 15 and
				   PassingScoreOnBudget = 318 and
				   NumberOfPlacesOnPaid = 15 and
				   PassingScoreOnPaid = 194 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (304224, 15, 318, 15, 194, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Дизайн' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Дизайн', (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 299 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 248 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 299, 5, 248, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Дизайн архитектурной среды' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Дизайн архитектурной среды', (SELECT Id FROM Institute WHERE Title = N'Институт архитектуры и дизайна'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 24 and
				   PassingScoreOnBudget = 208 and
				   NumberOfPlacesOnPaid = 6 and
				   PassingScoreOnPaid = 156 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 24, 208, 6, 156, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Документоведение и архивоведение' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Документоведение и архивоведение', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 12 and
				   PassingScoreOnBudget = 262 and
				   NumberOfPlacesOnPaid = 40 and
				   PassingScoreOnPaid = 202 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 12, 262, 40, 202, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Журналистика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт филологии и языковой коммуникации') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Журналистика', (SELECT Id FROM Institute WHERE Title = N'Институт филологии и языковой коммуникации'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 24 and
				   PassingScoreOnBudget = 167 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 24, 167, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Инноватика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Инноватика', (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 40 and
				   PassingScoreOnBudget = 178 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 40, 178, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Инфокоммуникационные технологии и системы связи' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Инфокоммуникационные технологии и системы связи', (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 72 and
				   PassingScoreOnBudget = 211 and
				   NumberOfPlacesOnPaid = 10 and
				   PassingScoreOnPaid = 159 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 72, 211, 10, 159, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Информатика и вычислительная техника' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информатика и вычислительная техника', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 55 and
				   PassingScoreOnBudget = 199 and
				   NumberOfPlacesOnPaid = 10 and
				   PassingScoreOnPaid = 142 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 55, 199, 10, 142, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Информационная безопасность' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информационная безопасность', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 208 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 208, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Информационная безопасность автоматизированных систем' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информационная безопасность автоматизированных систем', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 135 and
				   PassingScoreOnBudget = 221 and
				   NumberOfPlacesOnPaid = 35 and
				   PassingScoreOnPaid = 139 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 135, 221, 35, 139, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Информационные системы и технологии' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Информационные системы и технологии', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 16 and
				   PassingScoreOnBudget = 218 and
				   NumberOfPlacesOnPaid = 9 and
				   PassingScoreOnPaid = 154 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 16, 218, 9, 154, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Искусства и гуманитарные науки' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Искусства и гуманитарные науки', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 20 and
				   PassingScoreOnBudget = 229 and
				   NumberOfPlacesOnPaid = 20 and
				   PassingScoreOnPaid = 154 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 20, 229, 20, 154, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'История' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'История', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 191 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 166 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 191, 3, 166, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Компьютерная безопасность' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Компьютерная безопасность', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 20 and
				   PassingScoreOnBudget = 0 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 20, 0, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Конструирование и технология электронных средств' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Конструирование и технология электронных средств', (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 126 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 126, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Конструкторско-технологическое обеспечение машиностроительных производств' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Конструкторско-технологическое обеспечение машиностроительных производств', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 30 and
				   PassingScoreOnBudget = 263 and
				   NumberOfPlacesOnPaid = 50 and
				   PassingScoreOnPaid = 161 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 30, 263, 50, 161, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Лингвистика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт филологии и языковой коммуникации') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Лингвистика', (SELECT Id FROM Institute WHERE Title = N'Институт филологии и языковой коммуникации'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 20 and
				   PassingScoreOnBudget = 169 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 20, 169, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Математика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт математики и фундаментальной информатики') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Математика', (SELECT Id FROM Institute WHERE Title = N'Институт математики и фундаментальной информатики'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 60 and
				   PassingScoreOnBudget = 175 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 60, 175, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Математика и компьютерные науки' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт математики и фундаментальной информатики') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Математика и компьютерные науки', (SELECT Id FROM Institute WHERE Title = N'Институт математики и фундаментальной информатики'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 43 and
				   PassingScoreOnBudget = 132 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 43, 132, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Материаловедение и технологии материалов' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Материаловедение и технологии материалов', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 39147 and
				   NumberOfPlacesOnBudget = 43 and
				   PassingScoreOnBudget = 150 and
				   NumberOfPlacesOnPaid = 8 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (39147, 43, 150, 8, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Машиностроение' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Машиностроение', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 16 and
				   PassingScoreOnBudget = 248 and
				   NumberOfPlacesOnPaid = 29 and
				   PassingScoreOnPaid = 136 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 16, 248, 29, 136, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Международные отношения' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Юридический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Международные отношения', (SELECT Id FROM Institute WHERE Title = N'Юридический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 30 and
				   PassingScoreOnBudget = 227 and
				   NumberOfPlacesOnPaid = 170 and
				   PassingScoreOnPaid = 142 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 30, 227, 170, 142, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Менеджмент' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт гастрономии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Менеджмент', (SELECT Id FROM Institute WHERE Title = N'Институт гастрономии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 48804 and
				   NumberOfPlacesOnBudget = 126 and
				   PassingScoreOnBudget = 118 and
				   NumberOfPlacesOnPaid = 21 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (48804, 126, 118, 21, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Металлургия' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Металлургия', (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 166 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 166, 5, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Мехатроника и робототехника' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Мехатроника и робототехника', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 21 and
				   PassingScoreOnBudget = 131 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 21, 131, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Наземные транспортно-технологические комплексы' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Наземные транспортно-технологические комплексы', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 211306 and
				   NumberOfPlacesOnBudget = 75 and
				   PassingScoreOnBudget = 121 and
				   NumberOfPlacesOnPaid = 2 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (211306, 75, 121, 2, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Прикладная геология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт горного дела, геологии и геотехнологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Прикладная геология', (SELECT Id FROM Institute WHERE Title = N'Институт горного дела, геологии и геотехнологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 56112 and
				   NumberOfPlacesOnBudget = 160 and
				   PassingScoreOnBudget = 134 and
				   NumberOfPlacesOnPaid = 45 and
				   PassingScoreOnPaid = 162 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (56112, 160, 134, 45, 162, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Прикладная информатика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Заочно, Очно-заочно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Прикладная информатика', (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Заочно, Очно-заочно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 180 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 25, 180, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Прикладная математика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Прикладная математика', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 50 and
				   PassingScoreOnBudget = 196 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 164 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 50, 196, 1, 164, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Прикладная математика и информатика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт математики и фундаментальной информатики') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Прикладная математика и информатика', (SELECT Id FROM Institute WHERE Title = N'Институт математики и фундаментальной информатики'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 127 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 127, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Природообустройство и водопользование' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Инженерно-строительный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Природообустройство и водопользование', (SELECT Id FROM Institute WHERE Title = N'Инженерно-строительный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 56112 and
				   NumberOfPlacesOnBudget = 94 and
				   PassingScoreOnBudget = 134 and
				   NumberOfPlacesOnPaid = 45 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (56112, 94, 134, 45, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Программная инженерия' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Программная инженерия', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 76989 and
				   NumberOfPlacesOnBudget = 45 and
				   PassingScoreOnBudget = 0 and
				   NumberOfPlacesOnPaid = 4 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (76989, 45, 0, 4, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Продукты питания из растительного сырья' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Продукты питания из растительного сырья', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 23 and
				   PassingScoreOnBudget = 230 and
				   NumberOfPlacesOnPaid = 20 and
				   PassingScoreOnPaid = 136 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 23, 230, 20, 136, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Психология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Психология', (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 65247 and
				   NumberOfPlacesOnBudget = 50 and
				   PassingScoreOnBudget = 206 and
				   NumberOfPlacesOnPaid = 15 and
				   PassingScoreOnPaid = 141 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (65247, 50, 206, 15, 141, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Психолого-педагогическое образование' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Психолого-педагогическое образование', (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 40 and
				   PassingScoreOnBudget = 142 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 40, 142, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Радиотехника' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Радиотехника', (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 0 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 0, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Радиоэлектронные системы и комплексы' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Радиоэлектронные системы и комплексы', (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 12 and
				   PassingScoreOnBudget = 256 and
				   NumberOfPlacesOnPaid = 50 and
				   PassingScoreOnPaid = 150 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 12, 256, 50, 150, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Реклама и связи с общественностью' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Реклама и связи с общественностью', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 211306 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 148 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 117 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (211306, 25, 148, 1, 117, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Рекреация и спортивно-оздоровительный туризм' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт физической культуры, спорта и туризма') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Рекреация и спортивно-оздоровительный туризм', (SELECT Id FROM Institute WHERE Title = N'Институт физической культуры, спорта и туризма'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 16 and
				   PassingScoreOnBudget = 0 and
				   NumberOfPlacesOnPaid = 9 and
				   PassingScoreOnPaid = 115 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 16, 0, 9, 115, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Религиоведение' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Религиоведение', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 19 and
				   PassingScoreOnBudget = 215 and
				   NumberOfPlacesOnPaid = 6 and
				   PassingScoreOnPaid = 156 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 19, 215, 6, 156, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Сервис' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Сервис', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 24 and
				   PassingScoreOnBudget = 190 and
				   NumberOfPlacesOnPaid = 2 and
				   PassingScoreOnPaid = 186 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 24, 190, 2, 186, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Системный анализ и управление' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Системный анализ и управление', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 20 and
				   PassingScoreOnBudget = 215 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 168 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 20, 215, 5, 168, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Социальная работа' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Юридический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Социальная работа', (SELECT Id FROM Institute WHERE Title = N'Юридический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 16 and
				   PassingScoreOnBudget = 218 and
				   NumberOfPlacesOnPaid = 20 and
				   PassingScoreOnPaid = 160 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 16, 218, 20, 160, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Социально-культурная деятельность' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Социально-культурная деятельность', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 19 and
				   PassingScoreOnBudget = 234 and
				   NumberOfPlacesOnPaid = 10 and
				   PassingScoreOnPaid = 142 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 19, 234, 10, 142, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Социология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Социология', (SELECT Id FROM Institute WHERE Title = N'Институт педагогики, психологии и социологии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 21 and
				   PassingScoreOnBudget = 130 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 21, 130, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Стандартизация и метрология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Стандартизация и метрология', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 65247 and
				   NumberOfPlacesOnBudget = 175 and
				   PassingScoreOnBudget = 123 and
				   NumberOfPlacesOnPaid = 37 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (65247, 175, 123, 37, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Строительство' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Инженерно-строительный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Очно-заочно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Строительство', (SELECT Id FROM Institute WHERE Title = N'Инженерно-строительный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Очно-заочно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 50 and
				   PassingScoreOnBudget = 149 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 50, 149, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Строительство уникальных зданий и сооружений' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Инженерно-строительный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Строительство уникальных зданий и сооружений', (SELECT Id FROM Institute WHERE Title = N'Инженерно-строительный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 22 and
				   PassingScoreOnBudget = 233 and
				   NumberOfPlacesOnPaid = 28 and
				   PassingScoreOnPaid = 152 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 22, 233, 28, 152, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Таможенное дело' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Таможенное дело', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 40 and
				   PassingScoreOnBudget = 142 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 40, 142, 5, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Теплоэнергетика и теплотехника' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Теплоэнергетика и теплотехника', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 53241 and
				   NumberOfPlacesOnBudget = 97 and
				   PassingScoreOnBudget = 128 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (53241, 97, 128, 5, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Технологические машины и оборудование' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт горного дела, геологии и геотехнологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Технологические машины и оборудование', (SELECT Id FROM Institute WHERE Title = N'Институт горного дела, геологии и геотехнологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 48804 and
				   NumberOfPlacesOnBudget = 73 and
				   PassingScoreOnBudget = 118 and
				   NumberOfPlacesOnPaid = 4 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (48804, 73, 118, 4, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Технология геологической разведки' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт горного дела, геологии и геотехнологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Заочно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Технология геологической разведки', (SELECT Id FROM Institute WHERE Title = N'Институт горного дела, геологии и геотехнологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Заочно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 76989 and
				   NumberOfPlacesOnBudget = 45 and
				   PassingScoreOnBudget = 147 and
				   NumberOfPlacesOnPaid = 4 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (76989, 45, 147, 4, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Технология продукции и организация общественного питания' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Технология продукции и организация общественного питания', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 24 and
				   PassingScoreOnBudget = 134 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 24, 134, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Технология транспортных процессов' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Технология транспортных процессов', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 21 and
				   PassingScoreOnBudget = 169 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 21, 169, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Технология художественной обработки материалов' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Технология художественной обработки материалов', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 50 and
				   PassingScoreOnBudget = 151 and
				   NumberOfPlacesOnPaid = 5 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 50, 151, 5, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Техносферная безопасность' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Техносферная безопасность', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 14 and
				   PassingScoreOnBudget = 203 and
				   NumberOfPlacesOnPaid = 11 and
				   PassingScoreOnPaid = 176 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 14, 203, 11, 176, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Товароведение' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Товароведение', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 12 and
				   PassingScoreOnBudget = 224 and
				   NumberOfPlacesOnPaid = 13 and
				   PassingScoreOnPaid = 142 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 12, 224, 13, 142, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Торговое дело' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Торговое дело', (SELECT Id FROM Institute WHERE Title = N'Торгово-экономический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 118 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 118, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Транспортные средства специального назначения' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Транспортные средства специального назначения', (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 51765 and
				   NumberOfPlacesOnBudget = 42 and
				   PassingScoreOnBudget = 208 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 152 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (51765, 42, 208, 3, 152, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Туризм' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт физической культуры, спорта и туризма') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Туризм', (SELECT Id FROM Institute WHERE Title = N'Институт физической культуры, спорта и туризма'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 24 and
				   PassingScoreOnBudget = 185 and
				   NumberOfPlacesOnPaid = 2 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 24, 185, 2, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Управление в технических системах' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Управление в технических системах', (SELECT Id FROM Institute WHERE Title = N'Институт космических и информационных технологий'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 22 and
				   PassingScoreOnBudget = 151 and
				   NumberOfPlacesOnPaid = 3 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 22, 151, 3, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Управление качеством' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Управление качеством', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 12 and
				   PassingScoreOnBudget = 213 and
				   NumberOfPlacesOnPaid = 18 and
				   PassingScoreOnPaid = 156 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 12, 213, 18, 156, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Управление персоналом' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Управление персоналом', (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 60 and
				   PassingScoreOnBudget = 124 and
				   NumberOfPlacesOnPaid = 2 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 60, 124, 2, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Физика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Физика', (SELECT Id FROM Institute WHERE Title = N'Институт инженерной физики и радиоэлектроники'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 52197 and
				   NumberOfPlacesOnBudget = 75 and
				   PassingScoreOnBudget = 150 and
				   NumberOfPlacesOnPaid = 21 and
				   PassingScoreOnPaid = 135 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (52197, 75, 150, 21, 135, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Физическая культура' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт физической культуры, спорта и туризма') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Физическая культура', (SELECT Id FROM Institute WHERE Title = N'Институт физической культуры, спорта и туризма'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 18 and
				   PassingScoreOnBudget = 239 and
				   NumberOfPlacesOnPaid = 15 and
				   PassingScoreOnPaid = 152 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 18, 239, 15, 152, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Филология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт филологии и языковой коммуникации') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Филология', (SELECT Id FROM Institute WHERE Title = N'Институт филологии и языковой коммуникации'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 155258 and
				   NumberOfPlacesOnBudget = 15 and
				   PassingScoreOnBudget = 215 and
				   NumberOfPlacesOnPaid = 10 and
				   PassingScoreOnPaid = 188 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (155258, 15, 215, 10, 188, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Философия' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Философия', (SELECT Id FROM Institute WHERE Title = N'Гуманитарный институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 25 and
				   PassingScoreOnBudget = 165 and
				   NumberOfPlacesOnPaid = 2 and
				   PassingScoreOnPaid = 148 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 25, 165, 2, 148, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Фундаментальная и прикладная химия' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Фундаментальная и прикладная химия', (SELECT Id FROM Institute WHERE Title = N'Институт цветных металлов и материаловедения'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 50 and
				   PassingScoreOnBudget = 118 and
				   NumberOfPlacesOnPaid = 1 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 50, 118, 1, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Химическая технология' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Химическая технология', (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 40 and
				   PassingScoreOnBudget = 135 and
				   NumberOfPlacesOnPaid = 2 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 40, 135, 2, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Химия' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Химия', (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 176934 and
				   NumberOfPlacesOnBudget = 56 and
				   PassingScoreOnBudget = 120 and
				   NumberOfPlacesOnPaid = 4 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (176934, 56, 120, 4, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Экология и природопользование' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт экологии и географии') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Экология и природопользование', (SELECT Id FROM Institute WHERE Title = N'Институт экологии и географии'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 30 and
				   PassingScoreOnBudget = 224 and
				   NumberOfPlacesOnPaid = 70 and
				   PassingScoreOnPaid = 156 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 30, 224, 70, 156, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Экономика' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Экономика', (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 161466 and
				   NumberOfPlacesOnBudget = 70 and
				   PassingScoreOnBudget = 227 and
				   NumberOfPlacesOnPaid = 130 and
				   PassingScoreOnPaid = 142 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (161466, 70, 227, 130, 142, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Экономическая безопасность' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Экономическая безопасность', (SELECT Id FROM Institute WHERE Title = N'Институт экономики, управления и природопользования'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Специалитет'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 53241 and
				   NumberOfPlacesOnBudget = 118 and
				   PassingScoreOnBudget = 142 and
				   NumberOfPlacesOnPaid = 12 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (53241, 118, 142, 12, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Эксплуатация транспортно-технологических машин и комплексов' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Эксплуатация транспортно-технологических машин и комплексов', (SELECT Id FROM Institute WHERE Title = N'Институт нефти и газа'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 50631 and
				   NumberOfPlacesOnBudget = 115 and
				   PassingScoreOnBudget = 121 and
				   NumberOfPlacesOnPaid = 25 and
				   PassingScoreOnPaid = 118 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (50631, 115, 121, 25, 118, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Электроэнергетика и электротехника' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Политехнический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Электроэнергетика и электротехника', (SELECT Id FROM Institute WHERE Title = N'Политехнический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Заочно, Очно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
BEGIN
IF NOT EXISTS (SELECT * FROM AdditionalInformationAboutAreaOfStudy
                   WHERE Cost = 86124 and
				   NumberOfPlacesOnBudget = 109 and
				   PassingScoreOnBudget = 214 and
				   NumberOfPlacesOnPaid = 276 and
				   PassingScoreOnPaid = 140 and
				   [Year] = 2022)
		BEGIN
			INSERT INTO AdditionalInformationAboutAreaOfStudy(Cost, NumberOfPlacesOnBudget, PassingScoreOnBudget, NumberOfPlacesOnPaid, PassingScoreOnPaid, [Year])
			VALUES (86124, 109, 214, 276, 140, 2023)
			SELECT @id = SCOPE_IDENTITY()
		END
END

BEGIN
IF NOT EXISTS (SELECT * FROM AreaOfStudy
                   WHERE Title = N'Юриспруденция' and
				   InstituteId = (SELECT Id FROM Institute WHERE Title = N'Юридический институт') and
				   AdditionalInformationAboutAreaOfStudyId = @id and
				   FormOfEducationId = (SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Заочно, Очно-заочно') and
				   LevelOfEducationId = (SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		BEGIN
			INSERT INTO AreaOfStudy(Title, InstituteId, AdditionalInformationAboutAreaOfStudyId, FormOfEducationId, LevelOfEducationId)
			VALUES (N'Юриспруденция', (SELECT Id FROM Institute WHERE Title = N'Юридический институт'), @id,
			(SELECT Id FROM FormOfEducation WHERE Title = N'Очно, Заочно, Очно-заочно'),
			(SELECT Id FROM LevelOfEducation WHERE Title = N'Бакалавриат'))
		END
END
