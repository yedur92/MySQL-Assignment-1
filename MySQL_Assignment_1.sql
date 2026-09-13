create database employee;
use employee;

create table Departments (
	department_id int primary key,
    department_name varchar(100)
    );

create table Location (
	location_id int primary key,
    location varchar(30)
    );
    
create table Employees (
	employee_id int primary key,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    foreign key (department_id) references Departments (department_id),
    foreign key (location_id) references Location (location_id)
    );

alter table employees add email varchar(250);
alter table employees modify designation varchar(250);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;

rename table Departments to Departments_Info;
rename table Location to Locations;

truncate table Employees;
drop table employees;
drop database employee;

create database employee;
use employee;

create table Departments (
	department_id int primary key,
    department_name varchar(100) unique not null
    );

create table Location (
	location_id int auto_increment primary key,
    location varchar(30) unique not null
    );
    
create table Employees (
	employee_id int primary key,
    employee_name varchar(50) not null,
    gender enum('M','F') not null,
    age int check (age>=18),
    hire_date date default (current_date),
    designation varchar(100),
    department_id int,
    location_id int,
    foreign key (department_id) references Departments (department_id),
    foreign key (location_id) references Location (location_id)
    );
    
    desc departments;
    desc location;
    desc employees;