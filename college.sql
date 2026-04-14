CREATE DATABASE college_db1;
CREATE TABLE student1 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(100),
    course VARCHAR(50)
);
INSERT INTO student1 VALUES(1, 'Ravi', 20, 'Male', 'ravi@gmail.com', '9876543210', 'Bangalore', 'BCA');
select*from student1;

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    salary DOUBLE,
    email VARCHAR(100),
    phone VARCHAR(15),
    department VARCHAR(50)
);
INSERT INTO teachers VALUES(1, 'Anita', 'Math', 5, 40000, 'anita@gmail.com', '9876543211', 'Science');
select*from teachers;

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    duration VARCHAR(20),
    fees DOUBLE,
    department VARCHAR(50),
    level VARCHAR(20),
    instructor VARCHAR(50),
    seats INT
);
INSERT INTO courses VALUES(1, 'BCA', '3 Years', 60000, 'IT', 'UG', 'Anita', 60);
select*from courses;

CREATE TABLE exams (
    exam_id INT PRIMARY KEY,
    subject VARCHAR(50),
    date DATE,
    time VARCHAR(20),
    total_marks INT,
    passing_marks INT,
    exam_type VARCHAR(30),
    room_no INT
);
INSERT INTO exams VALUES(1, 'Math', '2026-04-20', '10AM', 100, 40, 'Final', 101);
select*from exams;

CREATE TABLE results (
    result_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    subject VARCHAR(50),
    marks INT,
    grade VARCHAR(5),
    status VARCHAR(10),
    exam_date DATE,
    remarks VARCHAR(50)
);
INSERT INTO results VALUES(1, 'Ravi', 'Math', 85, 'A', 'Pass', '2026-04-20', 'Good');
select*from results;