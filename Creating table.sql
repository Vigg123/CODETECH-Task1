-- Create a database to manage student records, including personal details, courses, and grades.
-- This project helps you practice creating and managing relational databases.  
-- Design tables for students, courses, and enrollments. 
-- Write SQL queries to manage student records. Implement joins to combine data from multiple tableS.

create database  StudentManagement;
USE StudentManagement;

-- creating Table-1 Students
 
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    Email VARCHAR(100) UNIQUE
);


INSERT INTO Students (StudentID, FirstName, LastName, BirthDate, Email)
VALUES 
    (1, 'Sam', 'Altman', '1990-01-01', 'sam.doe@example.com'),
    (2, 'Elon', 'Musk', '1992-02-02', 'musk.smith@example.com'),
    (3, 'Jeff', 'Benzo', '1991-01-12', 'Jeff.benzo@example.com'),
    (4, 'Mark', 'Zuckerberg', '1992-04-14', 'mark.zuckerberg@example.com'),  -- Changed email
    (5, 'John', 'Wick', '1993-02-02', 'john.wick@example.com');  -- Changed email
    
    DELETE FROM Students WHERE StudentID IN (1, 2, 3, 4, 5);

       
   
  
-- creating Table-2 Courses

CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT PRIMARY KEY,
    CourseName VARCHAR(100),
    CourseDescription TEXT);
    
insert into Courses(CourseName,CourseDescription)
value  ('Open AI', 'Introduction to c++'),
       ('data structures', 'World History Overview');

 
-- creating Table-3 Enrollments    
    
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);


-- Reinsert data into the Enrollments table
INSERT INTO Enrollments (StudentID, CourseID, Grade)
VALUES 
    (1, 1, 'A'),
    (1, 2, 'B'),
    (2, 1, 'A'),
    (2, 2, 'A'),
    (3, 1, 'B'),
    (3, 2, 'B'),
    (4, 1, 'C'),
    (4, 2, 'C'),
    (5, 1, 'A'),
    (5, 2, 'A');

                       

 