Create database anudip;
Use anudip;

-- Create Employee Table
CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    hire_date DATE,
    is_manager BOOLEAN
);

-- Insert Sample Data
INSERT INTO employees (employee_id, employee_name, salary, department, hire_date, is_manager)
VALUES
    (1, 'John Doe', 60000, 'IT', '2022-01-15', true),
    (2, 'Jane Smith', 75000, 'HR', '2023-04-20', false),
    (3, 'Bob Johnson', 50000, 'Marketing', '2023-08-10', false),
    (4, 'Alice Williams', 90000, 'IT', '2022-11-05', true),
    (5, 'Charlie Brown', 65000, 'Finance', '2023-02-28', false),
    (6, 'Diana Miller', 80000, 'Marketing', '2023-06-15', false),
    (7, 'Ethan Davis', 55000, 'IT', '2023-10-01', false),
    (8, 'Fiona Moore', 70000, 'Finance', '2023-12-12', false),
    (9, 'George Wilson', 95000, 'HR', '2022-03-25', true),
    (10, 'Hannah Lee', 48000, 'Marketing', '2024-01-08', false);

-- Insert Additional 20 Rows of Sample Data
INSERT INTO employees (employee_id, employee_name, salary, department, hire_date, is_manager)
VALUES
    (11, 'Grace Taylor', 55000, 'IT', '2023-03-12', false),
    (12, 'Henry Clark', 72000, 'Marketing', '2022-05-25', false),
    (13, 'Ivy Turner', 49000, 'Finance', '2023-08-18', false),
    (14, 'Jack Harris', 68000, 'IT', '2024-01-02', false),
    (15, 'Kimberly Adams', 60000, 'HR', '2023-09-15', true),
    (16, 'Liam Martin', 80000, 'Finance', '2023-11-30', false),
    (17, 'Mia Stewart', 52000, 'Marketing', '2024-03-06', false),
    (18, 'Noah White', 90000, 'IT', '2022-07-21', true),
    (19, 'Olivia Turner', 48000, 'HR', '2024-02-14', false),
    (20, 'Patrick Brown', 67000, 'Marketing', '2022-10-08', false),
    (21, 'Quinn Miller', 61000, 'Finance', '2023-04-03', false),
    (22, 'Ryan Davis', 76000, 'IT', '2024-05-18', false),
    (23, 'Sophia Wilson', 53000, 'HR', '2022-12-12', false),
    (24, 'Thomas Hall', 82000, 'Marketing', '2023-06-27', false),
    (25, 'Uma Harris', 47000, 'Finance', '2024-01-20', false),
    (26, 'Victor Lee', 69000, 'IT', '2022-08-05', false),
    (27, 'Willa Jackson', 59000, 'HR', '2023-01-30', false),
    (28, 'Xander Taylor', 78000, 'Marketing', '2024-04-15', false),
    (29, 'Yara Martinez', 51000, 'Finance', '2022-11-10', false),
    (30, 'Zane Carter', 73000, 'IT', '2023-05-25', false);

select * from employees;
-- Question 1: Find employees with a salary greater than $50,000.
select * from employees where salary>50000;

-- Question 2: Identify employees hired before '2022-01-01'.
select * from employees where hire_date < '2022-01-01';

-- Question 3: List employees with a salary between $40,000 and $60,000.
select * from employees where salary between 40000 and 60000;

-- Question 4: List employees whose department is 'IT'.
select * from employees where department = "IT";

-- Question 5: Find employees not working in the 'HR' department.
select * from employees where department != "HR";

-- Question 6: Identify employees with a salary equal to $70,000.
Select * from employees where salary = 70000;

-- Question 7: List employees hired after '2022-06-01' and not in the 'Finance' department.
Select * from employees where hire_date > '2022-06-01' and department != "Finance";

-- Question 8: Find employees with an employee_id less than 100.
select * from employees where employee_id < 100;

-- Question 9: List employees who are managers or have a salary greater than $80,000.
Select * from employees where salary > 80000 or is_manager = True;

-- Question 10: Find employees not in the 'Marketing' department and hired before '2022-12-31'.
Select * from employees where department != 'Marketing' and hire_date < '2022-12-31';

-- Question 11: Identify employees with a salary less than $60,000 and in the 'IT' department.
Select * from employees where salary < 60000 and department = 'IT';

-- Question 12: List employees hired in '2023' or working in the 'HR' department.
Select * from employees where year(hire_date) = '2023' or department = 'HR';

-- Question 13: Find employees with a salary less than $50,000 or hired after '2022-09-01'.
Select * from employees where salary < 50000 or hire_date > '2022-09-01';