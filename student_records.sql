
**Title: Student Records**

**Student Records Management System**:



-- Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15),
    DepartmentID INT  
);

-- Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    CourseCode VARCHAR(10) UNIQUE NOT NULL,
    DepartmentID INT,
    InstructorID INT
);

-- Enrollments Table (Students - Courses Many to Many Relationship)
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT
);

-- Instructors Table
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(15)
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50) NOT NULL
);



-- Inserting into Departments Table
INSERT INTO Departments (DepartmentName) VALUES
('Computer Science'),
('Engineering'),
('Business Administration'),
('Arts and Sciences'),
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('History'),
('English'),
('Economics'),
('Psychology'),
('Sociology'),
('Music'),
('Fine Arts');

-- Inserting into Instructors Table
INSERT INTO Instructors (FirstName, LastName, Email, Phone) VALUES
('Alice', 'Johnson', 'alice.j@example.com', '123-456-7890'),
('Bob', 'Williams', 'bob.w@example.com', '987-654-3210'),
('Charlie', 'Brown', 'charlie.b@example.com', '555-123-4567'),
('Diana', 'Miller', 'diana.m@example.com', '111-222-3333'),
('Ethan', 'Davis', 'ethan.d@example.com', '444-555-6666'),
('Fiona', 'Garcia', 'fiona.g@example.com', '777-888-9999'),
('George', 'Rodriguez', 'george.r@example.com', '222-333-4444'),
('Hannah', 'Wilson', 'hannah.w@example.com', '888-999-0000'),
('Ian', 'Martinez', 'ian.m@example.com', '333-444-5555'),
('Julia', 'Anderson', 'julia.a@example.com', '666-777-8888'),
('Kevin', 'Thomas', 'kevin.t@example.com', '999-000-1111'),
('Linda', 'Jackson', 'linda.j@example.com', '000-111-2222'),
('Michael', 'White', 'michael.w@example.com', '111-000-9999'),
('Nancy', 'Harris', 'nancy.h@example.com', '222-999-8888'),
('Oliver', 'Martin', 'oliver.m@example.com', '333-888-7777');

-- Inserting into Students Table
INSERT INTO Students (FirstName, LastName, DateOfBirth, Email, Phone, DepartmentID) VALUES
('Sophia', 'Clark', '2002-08-15', 'sophia.c@example.com', '456-789-0123', 1),
('Liam', 'Lewis', '2001-11-20', 'liam.l@example.com', '321-098-7654', 2),
('Olivia', 'Hall', '2003-03-10', 'olivia.h@example.com', '654-321-0987', 3),
('Noah', 'Young', '2000-06-25', 'noah.y@example.com', '987-654-3210', 4),
('Emma', 'Allen', '2002-01-30', 'emma.a@example.com', '210-987-6543', 5),
('Jackson', 'King', '2001-09-05', 'jackson.k@example.com', '876-543-2109', 6),
('Ava', 'Wright', '2003-05-12', 'ava.w@example.com', '543-210-9876', 7),
('Lucas', 'Scott', '2000-12-01', 'lucas.s@example.com', '098-765-4321', 8),
('Mia', 'Green', '2002-07-18', 'mia.g@example.com', '765-432-1098', 9),
('Ethan', 'Adams', '2001-04-22', 'ethan.a@example.com', '432-109-8765', 10),
('Chloe', 'Baker', '2003-02-14', 'chloe.b@example.com', '109-876-5432', 11),
('Benjamin', 'Nelson', '2000-10-08', 'benjamin.n@example.com', '876-109-5432', 12),
('Harper', 'Carter', '2002-09-29', 'harper.c@example.com', '543-876-2109', 13),
('Samuel', 'Phillips', '2001-06-03', 'samuel.p@example.com', '210-543-9876', 14),
('Scarlett', 'Campbell', '2003-01-11', 'scarlett.c@example.com', '987-210-6543', 15);

-- Inserting into Courses Table
INSERT INTO Courses (CourseName, CourseCode, DepartmentID, InstructorID) VALUES
('Introduction to Programming', 'CS101', 1, 1),
('Data Structures and Algorithms', 'CS201', 1, 2),
('Calculus I', 'MA101', 5, 3),
('Linear Algebra', 'MA201', 5, 4),
('General Physics I', 'PH101', 6, 5),
('Classical Mechanics', 'PH201', 6, 6),
('Organic Chemistry I', 'CH301', 7, 7),
('Inorganic Chemistry', 'CH201', 7, 8),
('General Biology', 'BI101', 8, 9),
('Cell Biology', 'BI201', 8, 10),
('World History I', 'HI101', 9, 11),
('American Literature', 'EN201', 10, 12),
('Microeconomics', 'EC101', 11, 13),
('Introduction to Psychology', 'PY101', 12, 14),
('Fundamentals of Sociology', 'SO101', 13, 15);

-- Inserting into Enrollments Table
INSERT INTO Enrollments (StudentID, CourseID) VALUES
(1, 1), (1, 3), (1, 5),
(2, 2), (2, 4), (2, 6),
(3, 1), (3, 7), (3, 12),
(4, 5), (4, 9), (4, 15),
(5, 3), (5, 8), (5, 11),
(6, 2), (6, 6), (6, 14),
(7, 4), (7, 10), (7, 13),
(8, 1), (8, 5), (8, 9),
(9, 2), (9, 6), (9, 10),
(10, 3), (10, 7), (10, 11),
(11, 4), (11, 8), (11, 12),
(12, 5), (12, 9), (12, 13),
(13, 6), (13, 10), (13, 14),
(14, 7), (14, 11), (14, 15),
(15, 8), (15, 12), (15, 1);