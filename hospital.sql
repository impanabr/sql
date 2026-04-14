CREATE DATABASE hospital_db;
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    disease VARCHAR(50),
    phone VARCHAR(15),
    address VARCHAR(100),
    admission_date DATE
);
INSERT INTO patients VALUES(1, 'Sita', 30, 'Female', 'Fever', '8888888888', 'Bangalore', '2026-04-10');
select*from patients;

CREATE TABLE staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50),
    role VARCHAR(50),
    shift VARCHAR(20),
    phone VARCHAR(15),
    salary DOUBLE,
    department VARCHAR(50),
    joining_date DATE
);
INSERT INTO staff VALUES(1, 'Ramesh', 'Nurse', 'Day', '9998887777', 25000, 'General', '2025-01-10');
select*from staff;

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    doctor_name VARCHAR(50),
    appointment_date DATE,
    time VARCHAR(20),
    status VARCHAR(20),
    room_no INT,
    remarks VARCHAR(50)
);
INSERT INTO appointments VALUES(1, 'Sita', 'Dr. Kumar', '2026-04-15', '11AM', 'Confirmed', 101, 'Regular checkup');
select*from appointments;

CREATE TABLE medicines (
    medicine_id INT PRIMARY KEY,
    name VARCHAR(50),
    type VARCHAR(50),
    price DOUBLE,
    quantity INT,
    manufacturer VARCHAR(50),
    expiry_date DATE,
    description VARCHAR(100)
);
INSERT INTO medicines VALUES(1, 'Paracetamol', 'Tablet', 50, 100, 'Cipla', '2027-01-01', 'Fever medicine');
select*from medicines;

CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    room_type VARCHAR(50),
    floor INT,
    capacity INT,
    charges DOUBLE,
    status VARCHAR(20),
    patient_name VARCHAR(50),
    admission_date DATE
);
INSERT INTO rooms VALUES(1, 'General', 1, 2, 1000, 'Occupied', 'Sita', '2026-04-10');
select*from rooms;