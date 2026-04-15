CREATE DATABASE software_company;
USE software_company;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    role VARCHAR(50)
);
ALTER TABLE employees 
ADD (email VARCHAR(50), salary INT, department VARCHAR(50));
ALTER TABLE employees DROP COLUMN role;
ALTER TABLE employees RENAME COLUMN emp_name TO employee_names;
ALTER TABLE employees RENAME COLUMN salary TO emp_salary;
ALTER TABLE employees MODIFY emp_salary DECIMAL(10,2);
ALTER TABLE employees MODIFY email VARCHAR(100);
INSERT INTO employees VALUES (1,'Amit','amit@gmail.com',50000,'Development');
INSERT INTO employees VALUES (2,'Sneha','sneha@gmail.com',60000,'Testing');
INSERT INTO employees VALUES (3,'Rahul','rahul@gmail.com',55000,'HR');
INSERT INTO employees VALUES (4,'Neha','neha@gmail.com',52000,'Support');
INSERT INTO employees VALUES (5,'Arjun','arjun@gmail.com',53000,'Development');
INSERT INTO employees VALUES(6,'Priya','priya@gmail.com',54000,'Testing');
INSERT INTO employees VALUES(7,'Kiran','kiran@gmail.com',56000,'HR');
INSERT INTO employees VALUES(8,'Divya','divya@gmail.com',57000,'Support');
INSERT INTO employees VALUES(9,'Rohit','rohit@gmail.com',58000,'Development');
INSERT INTO employees VALUES(10,'Pooja','pooja@gmail.com',59000,'Testing');
INSERT INTO employees VALUES(11,'Vikram','vikram@gmail.com',60000,'HR');
INSERT INTO employees VALUES(12,'Rohan','Rohan@gmail.com',65743,'HR');
INSERT INTO employees VALUES(13,'Adithya','Adithya@gmail.com',78906,'Developer');
INSERT INTO employees VALUES(14,'Raju','Raju23@gmail.com',89065,'Testing');
INSERT INTO employees VALUES(15,'Bhavith','Bhavith@gmail.com',90876,'HR');
UPDATE employees SET employee_name='Amit Kumar' WHERE emp_id=1;
DELETE FROM employees WHERE emp_id=3;
SELECT * FROM employees;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
ALTER TABLE departments 
ADD (manager VARCHAR(50), budget INT, phone BIGINT);
ALTER TABLE departments DROP COLUMN location;
ALTER TABLE departments RENAME COLUMN dept_name TO department_name;
ALTER TABLE departments RENAME COLUMN budget TO dept_budget;
ALTER TABLE departments MODIFY dept_budget DECIMAL(12,2);
ALTER TABLE departments MODIFY phone VARCHAR(15);
INSERT INTO departments VALUES (1,'Development','Manager1',100000,'9876543210');
INSERT INTO departments VALUES (2,'Testing','Manager2',80000,'9876543211');
INSERT INTO departments VALUES (3,'HR','Manager3',70000,'9876543212');
INSERT INTO departments VALUES (4,'Support','Manager4',60000,'9876543213');
INSERT INTO departments VALUES (5,'Admin','Manager5',50000,'9876543214');
INSERT INTO departments VALUES(6,'Finance','Manager6',90000,'9876543215');
INSERT INTO departments VALUES(7,'Marketing','Manager7',85000,'9876543216');
INSERT INTO departments VALUES(8,'Sales','Manager8',75000,'9876543217');
INSERT INTO departments VALUES(9,'IT','Manager9',95000,'9876543218');
INSERT INTO departments VALUES(10,'Security','Manager10',65000,'9876543219');
INSERT INTO departments VALUES(11,'Operations','Manager11',72000,'9876543220');
INSERT INTO departments VALUES(12,'Logistics','Manager12',73000,'9876543221');
INSERT INTO departments VALUES(13,'Legal','Manager13',88000,'9876543222');
INSERT INTO departments VALUES(14,'Testing','Manager14',78906,'8907654323');
INSERT INTO departments VALUES(15,'IT','Manager15',89076,'9876543210');
UPDATE departments SET department_name='DevOps' WHERE dept_id=1;
DELETE FROM departments WHERE dept_id=2;
SELECT * FROM departments;

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    duration INT
);
ALTER TABLE projects 
ADD (client_name VARCHAR(50), budget INT, status VARCHAR(20));
ALTER TABLE projects DROP COLUMN duration;
ALTER TABLE projects RENAME COLUMN project_name TO pname;
ALTER TABLE projects RENAME COLUMN budget TO project_budget;
ALTER TABLE projects MODIFY pname VARCHAR(100);
ALTER TABLE projects MODIFY project_budget DECIMAL(12,2);
INSERT INTO projects VALUES (1,'Website','ClientA',50000,'Ongoing');
INSERT INTO projects VALUES (2,'App','ClientB',70000,'Completed');
INSERT INTO projects VALUES (3,'ERP System','ClientC',80000,'Ongoing');
INSERT INTO projects VALUES (4,'CRM','ClientD',65000,'Pending');
INSERT INTO projects VALUES (5,'Ecommerce','ClientE',90000,'Ongoing');
INSERT INTO projects VALUES(6,'Banking App','ClientF',75000,'Completed');
INSERT INTO projects VALUES(7,'AI Tool','ClientG',95000,'Ongoing');
INSERT INTO projects VALUES(8,'Portfolio','ClientH',40000,'Pending');
INSERT INTO projects VALUES(9,'Mobile Game','ClientI',85000,'Ongoing');
INSERT INTO projects VALUES(10,'Cloud System','ClientJ',99000,'Completed');
INSERT INTO projects VALUES(11,'Chat App','ClientK',60000,'Ongoing');
INSERT INTO projects VALUES(12,'Inventory','ClientL',55000,'Pending');
INSERT INTO projects VALUES(13,'Billing System','ClientM',72000,'Completed');
INSERT INTO projects VALUES(14,'AI Tool','ClientN',67890,'Ongoing');
INSERT INTO projects VALUES(15,'Chat App','ClientO',78906,'Pending');
UPDATE projects SET status='Completed' WHERE project_id=1;
UPDATE projects SET pname='Updated App'WHERE project_id=3;
UPDATE projects SET client_name='ClientZ'WHERE project_id=5;
UPDATE projects SET project_budget='167899'WHERE project_id=7;
UPDATE projects SET status='On Hold'WHERE project_id=9;
DELETE FROM projects WHERE project_id=2;
SELECT * FROM projects;

CREATE TABLE managers (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(50),
    team_size INT
);
ALTER TABLE managers 
ADD (email VARCHAR(50), experience INT, salary INT);
ALTER TABLE managers DROP COLUMN team_size;
ALTER TABLE managers RENAME COLUMN manager_name TO mname;
ALTER TABLE managers RENAME COLUMN salary TO m_salary;
ALTER TABLE managers MODIFY m_salary DECIMAL(10,2);
ALTER TABLE managers MODIFY experience VARCHAR(10);
INSERT INTO managers VALUES (1,'Ramesh','ramesh@gmail.com','10',90000);
INSERT INTO managers VALUES (2,'Sita','sita@gmail.com','8',85000);
INSERT INTO managers VALUES (3,'Amit','amit@gmail.com','7',80000);
INSERT INTO managers VALUES (4,'Neha','neha@gmail.com','6',78000);
INSERT INTO managers VALUES (5,'Arjun','arjun@gmail.com','5',76000);
INSERT INTO managers VALUES(6,'Priya','priya@gmail.com','9',87000);
INSERT INTO managers VALUES(7,'Kiran','kiran@gmail.com','4',75000);
INSERT INTO managers VALUES(8,'Divya','divya@gmail.com','3',73000);
INSERT INTO managers VALUES(9,'Rohit','rohit@gmail.com','6',79000);
INSERT INTO managers VALUES(10,'Pooja','pooja@gmail.com','8',82000);
INSERT INTO managers VALUES(11,'Vikram','vikram@gmail.com','10',91000);
INSERT INTO managers VALUES(12,'Anjali','anjali@gmail.com','7',80500);
INSERT INTO managers VALUES(13,'Manoj','manoj@gmail.com','6',78000);
INSERT INTO managers VALUES(14,'Rohan','Rohan@gmail.com','8',67890);
INSERT INTO managers VALUES(15,'Rohith','Rohoth@gmail.com','9',56789);
UPDATE managers SET mname='Ramesh Kumar' WHERE manager_id=1;
UPDATE managers SET email='updated@gmail.com'WHERE manager_id=3;
UPDATE managers SET experience='12'WHERE manager_id=5;
UPDATE managers SET m_salary='95000'WHERE manager_id=7;
UPDATE managers SET mname='Updated Name'WHERE manager_id=9;
DELETE FROM managers WHERE manager_id=2;
SELECT * FROM managers;

CREATE TABLE clients (
    client_id INT PRIMARY KEY,
    client_name VARCHAR(50),
    country VARCHAR(50)
);
ALTER TABLE clients 
ADD (email VARCHAR(50), phone BIGINT, company VARCHAR(50));
ALTER TABLE clients DROP COLUMN country;
ALTER TABLE clients RENAME COLUMN client_name TO cname;
ALTER TABLE clients RENAME COLUMN phone TO mobile;
ALTER TABLE clients MODIFY mobile VARCHAR(15);
ALTER TABLE clients MODIFY email VARCHAR(100);
INSERT INTO clients VALUES(1,'ClientA','clienta@gmail.com','9000000001','ABC Ltd');
INSERT INTO clients VALUES(2,'ClientB','clientb@gmail.com','9000000002','XYZ Ltd');
INSERT INTO clients VALUES (3,'ClientC','clientc@gmail.com','9000000003','PQR Ltd');
INSERT INTO clients VALUES (4,'ClientD','clientd@gmail.com','9000000004','LMN Ltd');
INSERT INTO clients VALUES (5,'ClientE','cliente@gmail.com','9000000005','OPQ Ltd');
INSERT INTO clients VALUES(6,'ClientF','clientf@gmail.com','9000000006','RST Ltd');
INSERT INTO clients VALUES(7,'ClientG','clientg@gmail.com','9000000007','UVW Ltd');
INSERT INTO clients VALUES(8,'ClientH','clienth@gmail.com','9000000008','XYZ Corp');
INSERT INTO clients VALUES(9,'ClientI','clienti@gmail.com','9000000009','ABC Corp');
INSERT INTO clients VALUES(10,'ClientJ','clientj@gmail.com','9000000010','DEF Ltd');
INSERT INTO clients VALUE(11,'ClientK','clientk@gmail.com','9000000011','GHI Ltd');
INSERT INTO clients VALUE(12,'ClientL','clientl@gmail.com','9000000012','JKL Ltd');
INSERT INTO clients VALUE(13,'ClientM','clientm@gmail.com','9000000013','MNO Ltd');
INSERT INTO clients VALUE(14,'ClientN','clientn@gmail.com','7890765430','NOP Ltd');
INSERT INTO clients VALUE(15,'ClientO','cliento@gmail.com','6789054320','OPQ Ltd');
UPDATE clients SET cname='Client Alpha' WHERE client_id=1;
UPDATE clients SET email='updated@gmail.com'WHERE client_id=3;
UPDATE clients SET mobile='9999999999'WHERE client_id=5;
UPDATE clients SET company='Updated Company'WHERE client_id=7;
UPDATE clients SET cname='New Client Name'WHERE client_id=9;
DELETE FROM clients WHERE client_id=2;
SELECT * FROM clients;