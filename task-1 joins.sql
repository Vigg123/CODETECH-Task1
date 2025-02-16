-- Implement joins to combine data from multiple tableS.
--  Implement Joins

-- Get All Students Enrolled in Each Course

SELECT Students.FirstName, Students.LastName, Courses.CourseName, Enrollments.Grade
FROM Enrollments
JOIN Students ON Enrollments.StudentID = Students.StudentID
JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

-- Get Courses and Their Enrolled Students

SELECT Courses.CourseName, Students.FirstName, Students.LastName, Enrollments.Grade
FROM Courses
JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
JOIN Students ON Enrollments.StudentID = Students.StudentID;

-- Get Students with Their Average Grade

SELECT Students.FirstName, Students.LastName, AVG(CASE WHEN Grade = 'A' THEN 4
                                                       WHEN Grade = 'B' THEN 3
                                                       WHEN Grade = 'C' THEN 2
                                                       WHEN Grade = 'D' THEN 1
                                                       ELSE 0 END) AS AverageGrade
FROM Students
JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
GROUP BY Students.StudentID;

-- Get Courses with the Number of Enrolled Students

SELECT Courses.CourseName, COUNT(Enrollments.StudentID) AS NumberOfStudents
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseID; 



