-- 1. Create database (company1)
create database company1;

-- 2.	Delete Database company1 
drop database company1;

-- 3.	Create Database (company)
create database company;
use company;

-- 4.	Create tables in the company database.
-- 	i.	(employee) – emp_id , first_name, last_name, salary , age , dept_id  
create table employee (emp_id int primary key,
first_name varchar(50) not null, last_name varchar(50) not null, 
salary int, age int, dept_id int);

-- 	ii.	(department) - dept_id , dept_name, address 
create table department (dept_id int primary key,
dept_name varchar(20) not null, address varchar(50) not null);

-- 5.	insert 10 records into the both the tables
insert into employee values (1, 'Mandar','Deshmukh',500000,23,1),
(2, 'Harry','Potter',600000,27,2),
(3, 'Tony','Stark',500000,23,3),
(4, 'Yash','Pawar',500000,23,1);

insert into department values (1,'DA','Pune'),
(2,'DS','Mumbai'),
(3,'AI','Pune');

-- 6.	Select and view all data from employee
Select * from employee;

-- 7.	select and view all data from department 
Select * from department;

-- 8.	Select the employee who are from Department “A”(Optional Question)
Select * from employee where dept_id = (Select dept_id from department where dept_name = 'DA');