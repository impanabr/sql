create database airport;
use airport;
create table passenger_info(
    passenger_id char(5) primary key,
    passenger_name varchar(30) not null,
    passport_no varchar(20) unique,
    email varchar(50) check (email like '%@gmail.com'),
    phone bigint unique check (phone between 1000000000 and 9999999999)
);
insert into passenger_info values ('P001','Rahul','IND12345','rahul@gmail.com',9876543210);
select * from passenger_info;

create table flight_info(
    flight_id char(5) primary key,
    flight_name varchar(30) not null,
    source varchar(30),
    destination varchar(30),
    seats int check (seats > 0)
);
insert into flight_info values ('F001','AirIndia','Delhi','Mumbai',180);
select * from flight_info;

create table booking_info(
    booking_id char(5) primary key,
    passenger_id char(5),
    flight_id char(5),
    booking_date date,
    status varchar(20),
    foreign key (passenger_id) references passenger_info(passenger_id),
    foreign key (flight_id) references flight_info(flight_id)
);
insert into booking_info values ('B001','P001','F001','2026-04-16','Confirmed');
select * from booking_info;

create table staff_info(
    staff_id char(5) primary key,
    staff_name varchar(30),
    role varchar(20),
    salary int check (salary > 0),
    phone bigint unique
);
insert into staff_info values ('S001','Amit','Pilot',80000,9123456789);
select * from staff_info;

create table airport_info(
    airport_id char(5) primary key,
    airport_name varchar(50),
    city varchar(30),
    country varchar(30),
    capacity int check (capacity > 0)
);
insert into airport_info values 
('A001','IGI Airport','Delhi','India',50000);
select * from airport_info;