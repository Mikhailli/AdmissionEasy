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

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт цветных металлов и материаловедения')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт цветных металлов и материаловедения')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт архитектуры и дизайна')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт архитектуры и дизайна')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт управления бизнес-процессами и экономики')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт управления бизнес-процессами и экономики')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт фундаментальной биологии и биотехнологии')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт фундаментальной биологии и биотехнологии')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт экологии и географии')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт экологии и географии')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Торгово-экономический институт')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Торгово-экономический институт')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт экономики, управления и природопользования')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт экономики, управления и природопользования')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Гуманитарный институт')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Гуманитарный институт')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт филологии и языковой коммуникации')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт филологии и языковой коммуникации')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт инженерной физики и радиоэлектроники')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт инженерной физики и радиоэлектроники')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Политехнический институт')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Политехнический институт')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт математики и фундаментальной информатики')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт математики и фундаментальной информатики')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Юридический институт')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Юридический институт')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт гастрономии')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт гастрономии')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Военно-инженерный институт')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Военно-инженерный институт')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт нефти и газа')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт нефти и газа')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт педагогики, психологии и социологии')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт педагогики, психологии и социологии')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт физической культуры, спорта и туризма')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт физической культуры, спорта и туризма')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Институт горного дела, геологии и геотехнологий')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Институт горного дела, геологии и геотехнологий')
		END
END

    
BEGIN
   IF NOT EXISTS (SELECT * FROM Institute 
                   WHERE UniversityId = 1
                   AND Title = N'Инженерно-строительный институт')
		BEGIN
			INSERT INTO Institute(UniversityId, Title)
			VALUES (1, N'Инженерно-строительный институт')
		END
END

