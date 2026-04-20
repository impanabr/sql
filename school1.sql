CREATE DATABASE school1;
USE school1;
CREATE TABLE students (
    id INT,
    name VARCHAR(50),
    age INT,
    marks INT,
    city VARCHAR(50)
);
INSERT INTO students VALUES
(1, 'Arjun', 20, 85, 'Delhi'),
(2, 'Riya', 22, 90, 'Mumbai'),
(3, 'Rohith', 19, 70, 'Chennai'),
(4, 'Sara', 21, 60, 'Delhi'),
(5, 'Kiran', 23, 95, 'Bangalore'),
(6, 'Neha', 20, 88, 'Mumbai');
SELECT * FROM students;
SELECT * FROM students WHERE marks > 80;
SELECT * FROM students WHERE age > 21;
SELECT * FROM students WHERE marks > 90;
SELECT * FROM students WHERE id > 3;
SELECT * FROM students WHERE age > 19;

SELECT * FROM students WHERE marks < 80;
SELECT * FROM students WHERE age < 21;
SELECT * FROM students WHERE id < 4;
SELECT * FROM students WHERE marks < 70;
SELECT * FROM students WHERE age < 23;

SELECT * FROM students WHERE marks >= 85;
SELECT * FROM students WHERE age >= 21;
SELECT * FROM students WHERE id >= 3;
SELECT * FROM students WHERE marks >= 90;
SELECT * FROM students WHERE age >= 20;

SELECT * FROM students WHERE marks <= 85;
SELECT * FROM students WHERE age <= 21;
SELECT * FROM students WHERE id <= 4;
SELECT * FROM students WHERE marks <= 70;
SELECT * FROM students WHERE age <= 23;

SELECT * FROM students WHERE city != 'Delhi';
SELECT * FROM students WHERE marks != 90;
SELECT * FROM students WHERE age != 20;
SELECT * FROM students WHERE name != 'Arjun';
SELECT * FROM students WHERE id != 2;

SELECT * FROM students WHERE marks > 80 AND city = 'Mumbai';
SELECT * FROM students WHERE age > 20 AND marks > 85;
SELECT * FROM students WHERE city = 'Delhi' AND marks < 70;
SELECT * FROM students WHERE age >= 20 AND city = 'Bangalore';
SELECT * FROM students WHERE marks > 60 AND age < 23;

SELECT * FROM students WHERE city = 'Delhi' OR city = 'Mumbai';
SELECT * FROM students WHERE marks > 90 OR age < 20;
SELECT * FROM students WHERE age = 20 OR age = 21;
SELECT * FROM students WHERE city = 'Chennai' OR marks > 85;
SELECT * FROM students WHERE id = 1 OR id = 5;

SELECT * FROM students WHERE NOT city = 'Delhi';
SELECT * FROM students WHERE NOT marks > 80;
SELECT * FROM students WHERE NOT age = 20;
SELECT * FROM students WHERE NOT name = 'Riya';
SELECT * FROM students WHERE NOT id = 3;

SELECT * FROM students WHERE city IN ('Delhi', 'Mumbai');
SELECT * FROM students WHERE age IN (20, 22);
SELECT * FROM students WHERE id IN (1, 3, 5);
SELECT * FROM students WHERE marks IN (70, 90);
SELECT * FROM students WHERE name IN ('Aman', 'Sara');

SELECT * FROM students WHERE city NOT IN ('Delhi', 'Mumbai');
SELECT * FROM students WHERE age NOT IN (20, 22);
SELECT * FROM students WHERE id NOT IN (1, 3);
SELECT * FROM students WHERE marks NOT IN (70, 90);
SELECT * FROM students WHERE name NOT IN ('Arjun', 'Riya');

SELECT * FROM students WHERE city IS NULL;
SELECT * FROM students WHERE city IS NOT NULL;
SELECT * FROM students WHERE marks IS NULL;
SELECT * FROM students WHERE age IS NOT NULL;
SELECT * FROM students WHERE name IS NOT NULL;

SELECT * FROM students WHERE name LIKE 'A%';
SELECT * FROM students WHERE name LIKE '%a';
SELECT * FROM students WHERE city LIKE 'M%';
SELECT * FROM students WHERE name LIKE 'a%';
SELECT * FROM students WHERE city LIKE '%i';

SELECT * FROM students WHERE name NOT LIKE 'A%';
SELECT * FROM students WHERE city NOT LIKE 'M%';
SELECT * FROM students WHERE name NOT LIKE '%a';
SELECT * FROM students WHERE city NOT LIKE '%i';
SELECT * FROM students WHERE name NOT LIKE 'a%';

SELECT * FROM students WHERE marks BETWEEN 70 AND 90;
SELECT * FROM students WHERE age BETWEEN 20 AND 22;
SELECT * FROM students WHERE id BETWEEN 2 AND 5;
SELECT * FROM students WHERE marks BETWEEN 60 AND 85;
SELECT * FROM students WHERE age BETWEEN 19 AND 23;

SELECT * FROM students WHERE marks NOT BETWEEN 70 AND 90;
SELECT * FROM students WHERE age NOT BETWEEN 20 AND 22;
SELECT * FROM students WHERE id NOT BETWEEN 2 AND 5;
SELECT * FROM students WHERE marks NOT BETWEEN 60 AND 85;
SELECT * FROM students WHERE age NOT BETWEEN 19 AND 23;