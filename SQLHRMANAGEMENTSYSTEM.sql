create database HRManagementSystem;

use HRManagementSystem;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    hire_date DATE,
    performance_rating INT
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Attendance (
    att_id INT PRIMARY KEY,
    emp_id INT,
    date DATE,
    status VARCHAR(10),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(15),
    basic DECIMAL(10,2),
    bonus DECIMAL(10,2),
    deductions DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

CREATE TABLE LeaveRequests (
    leave_id INT PRIMARY KEY,
    emp_id INT,
    start_date DATE,
    end_date DATE,
    reason VARCHAR(100),
    status VARCHAR(20),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

INSERT INTO Departments VALUES
(1,'HR'), (2,'IT'), (3,'Finance'), (4,'Sales');

INSERT INTO Employees VALUES
(101,'Arun',2,50000,'2021-01-10',4),
(102,'Priya',1,40000,'2020-03-12',5),
(103,'Rahul',3,60000,'2019-07-23',3),
(104,'Sneha',2,55000,'2022-05-01',4),
(105,'Kiran',4,45000,'2021-11-15',2);

SELECT d.dept_name, SUM(e.salary) AS total_salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY total_salary DESC
LIMIT 1;

SELECT name, hire_date, performance_rating
FROM Employees
WHERE performance_rating >= 4
AND TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) >= 2;




