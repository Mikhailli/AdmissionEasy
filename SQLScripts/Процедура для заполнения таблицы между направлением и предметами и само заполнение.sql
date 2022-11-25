USE db_aa2d2
GO


BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 1
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (1, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 1
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (1, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 1
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (1, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 2
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (2, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 2
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (2, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 2
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (2, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 3
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (3, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 3
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (3, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 3
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (3, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 4
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (4, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 4
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (4, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 4
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (4, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 5
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (5, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 5
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (5, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 5
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (5, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 6
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (6, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 6
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (6, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 6
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (6, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 7
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (7, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 7
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (7, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 7
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (7, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 8
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (8, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 8
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (8, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 8
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (8, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 9
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (9, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 9
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (9, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 9
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (9, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 10
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (10, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 10
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (10, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 10
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (10, 12)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 11
				   AND SubjectsId = 1)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (11, 1)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 11
				   AND SubjectsId = 2)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (11, 2)
		END
END
BEGIN
   IF NOT EXISTS (SELECT * FROM AreaOfStudySubject 
                   WHERE AreaOfStudiesId = 11
				   AND SubjectsId = 12)
		BEGIN
			INSERT INTO AreaOfStudySubject(AreaOfStudiesId, SubjectsId)
			VALUES (11, 12)
		END
END
