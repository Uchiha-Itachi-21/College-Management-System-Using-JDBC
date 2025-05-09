-- -- Students Table
-- CREATE TABLE Students (
--     StudentID INT PRIMARY KEY,
--     Name VARCHAR2(100),
--     Email VARCHAR2(100),
--     Country VARCHAR2(50)
-- );

-- Courses Table
-- CREATE TABLE Courses (
--     CourseID INT PRIMARY KEY,
--     Title VARCHAR2(100),
--     Department VARCHAR2(50),
--     Instructor VARCHAR2(100),
--     YearOffered INT
-- );

-- -- Enrollments Table
-- CREATE TABLE Enrollments (
--     EnrollmentID INT PRIMARY KEY,
--     StudentID INT,
--     CourseID INT,
--     Grade VARCHAR2(2),
--     DateEnrolled DATE,
--     LastUpdated DATE,
--     FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
--     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
-- );

-- CourseTags Table
-- CREATE TABLE CourseTags (
--     TagID INT PRIMARY KEY,
--     CourseID INT,
--     Tag VARCHAR2(50),
--     FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
-- );

-- INSERT ALL
--     INTO Students VALUES (1, 'Sukhmandeep Singh', 'sukhmandeep@email.com', 'India')
--     INTO Students VALUES (2, 'Diljit Dosanjh', 'diljit@email.com', 'India')
--     INTO Students VALUES (3, 'Gurdaas Maan', 'gurdaas@email.com', 'India')
--     INTO Students VALUES (4, 'Manit Saxena', 'manit@email.com', 'India')
--     INTO Students VALUES (5, 'Sidakpreet Singh', 'sidak@email.com', 'India')
--     INTO Students VALUES (6, 'Gurpreet Singh', 'gurpreet@email.com', 'India')
--     INTO Students VALUES (7, 'Kunal Jangir', 'kunalj@email.com', 'India')
--     INTO Students VALUES (8, 'Kunal Tanwar', 'kunalt@email.com', 'India')
--     INTO Students VALUES (9, 'Amarjit Singh', 'amarjit@email.com', 'India')
--     INTO Students VALUES (10, 'Satwinder Kaur', 'satwinder@email.com', 'India')
--     INTO Students VALUES (11, 'Jasleen Kaur', 'jasleen@email.com', 'India')
--     INTO Students VALUES (12, 'Roop Singh', 'roop@email.com', 'India')
--     INTO Students VALUES (13, 'Davinder Singh', 'davinder@email.com', 'India')
--     INTO Students VALUES (14, 'Gurwinder Singh', 'gurwinder@email.com', 'India')
--     INTO Students VALUES (15, 'Jaskirat Singh', 'jaskirat@email.com', 'India')
--     INTO Students VALUES (16, 'Manpreet Singh', 'manpreet@email.com', 'India')
--     INTO Students VALUES (17, 'Naruto Uzumaki', 'naruto@email.com', 'Japan')
--     INTO Students VALUES (18, 'Sasuke Uchiha', 'sasuke@email.com', 'Japan')
--     INTO Students VALUES (19, 'Sakura Haruno', 'sakura@email.com', 'Japan')
--     INTO Students VALUES (20, 'Kakashi Hatake', 'kakashi@email.com', 'Japan')
--     INTO Students VALUES (21, 'Itachi Uchiha', 'itachi@email.com', 'Japan')
--     INTO Students VALUES (22, 'Hinata Hyuga', 'hinata@email.com', 'Japan')
--     INTO Students VALUES (23, 'Shikamaru Nara', 'shikamaru@email.com', 'Japan')
--     INTO Students VALUES (24, 'Rock Lee', 'rocklee@email.com', 'Japan')
--     INTO Students VALUES (25, 'Gaara Sabaku', 'gaara@email.com', 'Japan')
--     INTO Students VALUES (26, 'Neji Hyuga', 'neji@email.com', 'Japan')
--     INTO Students VALUES (27, 'Tenten', 'tenten@email.com', 'Japan')
--     INTO Students VALUES (28, 'Kiba Inuzuka', 'kiba@email.com', 'Japan')
--     INTO Students VALUES (29, 'Ino Yamanaka', 'ino@email.com', 'Japan')
--     INTO Students VALUES (30, 'Choji Akimichi', 'choji@email.com', 'Japan')
-- SELECT * FROM dual;


-- -- Insert Courses
-- INSERT ALL
--     INTO Courses VALUES (1, 'Computer Science 101', 'CSE', 'Tony Stark', 2024)
--     INTO Courses VALUES (2, 'Physics Fundamentals', 'Physics', 'Walter Lewin', 2024)
--     INTO Courses VALUES (3, 'Chakra Fundamentals', 'Chakra', 'Hashirama Senju', 2024)
--     INTO Courses VALUES (4, 'Introduction to AI', 'CSE', 'Ultron', 2025)
--     INTO Courses VALUES (5, 'History of World', 'History', 'The Watcher', 2024)
--     INTO Courses VALUES (6, 'Machine Learning', 'CSE', 'Vision', 2025)
--     INTO Courses VALUES (7, 'Spells and Charms', 'Wizardry', 'Prof. Severus Snape', 2024)
--     INTO Courses VALUES (8, 'Psychology Basics', 'Psychology', 'Light Yagami', 2024)
--     INTO Courses VALUES (9, 'Asian Fundamentals', 'Failure Management', 'Prof. Steven He', 2024)
--     INTO Courses VALUES (10, 'Digital Systems', 'Computer Stuff', 'Linus Sebastian', 2025)
-- SELECT * FROM dual;

-- Insert Enrollments (All 30 students)
-- INSERT ALL
--     INTO Enrollments VALUES (1, 1, 1, 'A', DATE '2024-01-15', NULL)
--     INTO Enrollments VALUES (2, 2, 2, 'B', DATE '2024-01-17', NULL)
--     INTO Enrollments VALUES (3, 3, 3, 'A', DATE '2024-02-10', NULL)
--     INTO Enrollments VALUES (4, 4, 4, 'A', DATE '2024-03-01', NULL)
--     INTO Enrollments VALUES (5, 5, 5, 'C', DATE '2024-02-05', NULL)
--     INTO Enrollments VALUES (6, 6, 6, 'B', DATE '2024-01-20', NULL)
--     INTO Enrollments VALUES (7, 7, 7, 'A', DATE '2024-03-12', NULL)
--     INTO Enrollments VALUES (8, 8, 8, 'B', DATE '2024-01-22', NULL)
--     INTO Enrollments VALUES (9, 9, 9, 'A', DATE '2024-03-03', NULL)
--     INTO Enrollments VALUES (10, 10, 10, 'B', DATE '2024-02-28', NULL)
--     INTO Enrollments VALUES (11, 11, 1, 'B', DATE '2024-03-05', NULL)
--     INTO Enrollments VALUES (12, 12, 2, 'C', DATE '2024-03-06', NULL)
--     INTO Enrollments VALUES (13, 13, 3, 'A', DATE '2024-03-07', NULL)
--     INTO Enrollments VALUES (14, 14, 4, 'B', DATE '2024-03-08', NULL)
--     INTO Enrollments VALUES (15, 15, 5, 'A', DATE '2024-03-09', NULL)
--     INTO Enrollments VALUES (16, 16, 6, 'B', DATE '2024-03-10', NULL)
--     INTO Enrollments VALUES (17, 17, 1, 'A', DATE '2024-03-01', NULL)
--     INTO Enrollments VALUES (18, 18, 2, 'B', DATE '2024-03-02', NULL)
--     INTO Enrollments VALUES (19, 19, 3, 'A', DATE '2024-03-03', NULL)
--     INTO Enrollments VALUES (20, 20, 4, 'A', DATE '2024-03-04', NULL)
--     INTO Enrollments VALUES (21, 21, 7, 'A', DATE '2024-03-11', NULL)
--     INTO Enrollments VALUES (22, 22, 8, 'B', DATE '2024-03-12', NULL)
--     INTO Enrollments VALUES (23, 23, 9, 'C', DATE '2024-03-13', NULL)
--     INTO Enrollments VALUES (24, 24, 10, 'B', DATE '2024-03-14', NULL)
--     INTO Enrollments VALUES (25, 25, 1, 'A', DATE '2024-03-15', NULL)
--     INTO Enrollments VALUES (26, 26, 2, 'B', DATE '2024-03-16', NULL)
--     INTO Enrollments VALUES (27, 27, 3, 'C', DATE '2024-03-17', NULL)
--     INTO Enrollments VALUES (28, 28, 4, 'A', DATE '2024-03-18', NULL)
--     INTO Enrollments VALUES (29, 29, 5, 'B', DATE '2024-03-19', NULL)
--     INTO Enrollments VALUES (30, 30, 6, 'A', DATE '2024-03-20', NULL)
-- SELECT * FROM dual;

-- -- Insert Course Tags (All Courses Tagged)
-- INSERT ALL
--     INTO CourseTags VALUES (1, 1, 'Programming')
--     INTO CourseTags VALUES (2, 1, 'Iron Man Tech')
--     INTO CourseTags VALUES (3, 2, 'Physics')
--     INTO CourseTags VALUES (4, 2, 'MIT Lectures')
--     INTO CourseTags VALUES (5, 3, 'Chakra')
--     INTO CourseTags VALUES (6, 3, 'Senju Techniques')
--     INTO CourseTags VALUES (7, 4, 'AI')
--     INTO CourseTags VALUES (8, 4, 'Ultron')
--     INTO CourseTags VALUES (9, 5, 'World History')
--     INTO CourseTags VALUES (10, 5, 'Multiverse')
--     INTO CourseTags VALUES (11, 6, 'Machine Learning')
--     INTO CourseTags VALUES (12, 6, 'Vision Tech')
--     INTO CourseTags VALUES (13, 7, 'Magic')
--     INTO CourseTags VALUES (14, 7, 'Dark Arts')
--     INTO CourseTags VALUES (15, 8, 'Psychology')
--     INTO CourseTags VALUES (16, 8, 'Mind Games')
--     INTO CourseTags VALUES (17, 9, 'Culture')
--     INTO CourseTags VALUES (18, 9, 'Emotional Damage')
--     INTO CourseTags VALUES (19, 10, 'Electronics')
--     INTO CourseTags VALUES (20, 10, 'Tech Reviews')
-- SELECT * FROM dual;

-- Trigger to auto-update LastUpdated when Grade changes
-- CREATE OR REPLACE TRIGGER trg_UpdateLastUpdated
-- BEFORE UPDATE ON Enrollments
-- FOR EACH ROW
-- BEGIN
--     IF :NEW.Grade <> :OLD.Grade THEN
--         :NEW.LastUpdated := SYSDATE;
--     END IF;
-- END;
-- /

-- Procedure to update a grade
-- CREATE OR REPLACE PROCEDURE UpdateGrade (
--     enrollmentId IN NUMBER,
--     newGrade IN VARCHAR2
-- )
-- IS
-- BEGIN
--     UPDATE Enrollments
--     SET Grade = newGrade
--     WHERE EnrollmentID = enrollmentId;
-- END;
-- /



-- SELECT S.Name, C.Title, E.Grade
-- FROM Enrollments E
-- JOIN Students S ON E.StudentID = S.StudentID
-- JOIN Courses C ON E.CourseID = C.CourseID
-- WHERE S.Name = 'Diljit Dosanjh';

-- BEGIN
--     UpdateGrade(1, 'A+');
-- END;

-- SELECT S.Name, C.Title, E.Grade, E.LastUpdated
-- FROM Enrollments E
-- JOIN Students S ON E.StudentID = S.StudentID
-- JOIN Courses C ON E.CourseID = C.CourseID
-- WHERE S.Name = 'Diljit Dosanjh';

-- SELECT 
--     S.Name AS StudentName,
--     C.Title AS CourseTitle,
--     C.Department,
--     C.Instructor,
--     C.YearOffered,
--     E.Grade,
--     E.DateEnrolled,
--     E.LastUpdated,
--     LISTAGG(DISTINCT T.Tag, ', ') WITHIN GROUP (ORDER BY T.Tag) AS Tags
-- FROM Students S
-- JOIN Enrollments E ON S.StudentID = E.StudentID
-- JOIN Courses C ON C.CourseID = E.CourseID
-- LEFT JOIN CourseTags T ON C.CourseID = T.CourseID
-- GROUP BY S.Name, C.Title, C.Department, C.Instructor, C.YearOffered, E.Grade, E.DateEnrolled, E.LastUpdated
-- ORDER BY S.Name, C.Title;

select * from students;



-- 1. Create sequence if not exists
-- CREATE SEQUENCE ENROLLMENT_SEQ START WITH 1 INCREMENT BY 1;

-- 2. Drop old trigger (if broken)
-- DROP TRIGGER TRG_ENROLLMENT_ID;

-- -- 3. Create correct BEFORE INSERT trigger
-- CREATE OR REPLACE TRIGGER TRG_ENROLLMENT_ID
-- BEFORE INSERT ON Enrollments
-- FOR EACH ROW
-- BEGIN
--   :NEW.ENROLLMENTID := ENROLLMENT_SEQ.NEXTVAL;
-- END;
-- /



-- ALTER TABLE Enrollments MODIFY Grade VARCHAR2(5);

-- DELETE from STUDENTS where STUDENTID= 31;

-- SELECT constraint_name, table_name, column_name
-- FROM all_cons_columns
-- WHERE constraint_name = 'SYS_C008231';


-- CREATE DATABASE IF NOT EXISTS CustomerDB;

-- USE CustomerDB;

-- CREATE TABLE customer (
--     id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     name VARCHAR2(100),
--     email VARCHAR2(100)
-- );


-- from another project
-- DROP TABLE customer;

-- CREATE TABLE customer (
--     id NUMBER ,
--     name VARCHAR2(100),
--     email VARCHAR2(100)
-- );

-- INSERT ALL
--     INTO customer (id, name, email) VALUES (1, 'Sukhmandeep Singh', 'sukhman@email.com')
--     INTO customer (id, name, email) VALUES (2, 'Akash Singh', 'akash@email.com')
--     INTO customer (id, name, email) VALUES (3, 'Divit Bansal', 'divit@email.com')
-- SELECT * FROM dual;


-- SELECT * FROM customer;




