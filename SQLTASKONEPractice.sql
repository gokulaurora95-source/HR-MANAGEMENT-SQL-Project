CREATE DATABASE SQL_new;

use SQL_new;

create table employees(id INT Primary key, name varchar(100),department varchar(100),salary int,hire_date date);

INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, 'Alice', 'HR', 60000, '2021-01-15'),
(2, 'Bob', 'IT', 70000, '2020-03-22'),
(3, 'Charlie', 'Finance', 55000, '2019-06-10'),
(4, 'David', 'Sales', 45000, '2021-11-30'),
(5, 'Eva', 'Marketing', 48000, '2022-07-19'),
(6, 'Frank', 'HR', 50000, '2020-12-01'),
(7, 'Grace', 'Finance', 65000, '2023-02-05'),
(8, 'Hank', 'IT', 62000, '2018-09-12'),
(9, 'Ivy', 'Sales', 47000, '2021-04-20'),
(10, 'Jack', 'Marketing', 52000, '2022-01-10'),
(11, 'Ken', 'HR', 56000, '2023-03-15'),
(12, 'Lily', 'Finance', 51000, '2022-10-25'),
(13, 'Mike', 'Sales', 44000, '2020-08-17'),
(14, 'Nina', 'IT', 71000, '2019-12-03'),
(15, 'Oscar', 'Marketing', 46000, '2021-05-28');


DROP TABLE employees;


create table employees(id INT Primary key, name varchar(100),department varchar(100),salary int,hire_date date);


INSERT INTO employees (id, name, department, salary, hire_date) VALUES
(1, 'Alice', 'HR', 60000, '2021-01-15'),
(2, 'Bob', 'IT', 70000, '2020-03-22'),
(3, 'Charlie', 'Finance', 55000, '2019-06-10'),
(4, 'David', 'Sales', 45000, '2021-11-30'),
(5, 'Eva', 'Marketing', 48000, '2022-07-19'),
(6, 'Frank', 'HR', 50000, '2020-12-01'),
(7, 'Grace', 'Finance', 65000, '2023-02-05'),
(8, 'Hank', 'IT', 62000, '2018-09-12'),
(9, 'Ivy', 'Sales', 47000, '2021-04-20'),
(10, 'Jack', 'Marketing', 52000, '2022-01-10'),
(11, 'Ken', 'HR', 56000, '2023-03-15'),
(12, 'Lily', 'Finance', 51000, '2022-10-25'),
(13, 'Mike', 'Sales', 44000, '2020-08-17'),
(14, 'Nina', 'IT', 71000, '2019-12-03'),
(15, 'Oscar', 'Marketing', 46000, '2021-05-28');


select*from employees;

select*from employees WHERE DEPARTMENT='HR';

select*from employees WHERE Salary >50000;

select*from employees WHERE hire_date >2020;

select*from employees WHERE hire_date >'2020-12-31';

select*from employees WHERE name ='A';

select*from employees WHERE name LIKE'J';

SELECT * FROM employees WHERE Salary BETWEEN 50000 AND 70000;

SELECT * FROM employees WHERE DEPARTMENT IN ('HR' ,'Finance');

SELECT * FROM employees WHERE DEPARTMENT NOT IN ('IT','SALES');
SELECT * FROM employees WHERE ID  IN (1,3,5);
SELECT * FROM employees WHERE ID NOT IN (2,4,6);

SELECT *
FROM employees
WHERE department IN ('value1', 'value2', 'value3');

SELECT *
FROM employees
WHERE department IN ('HR', 'IT', 'Finance');

SELECT *
FROM employees
ORDER BY salary ASC;

SELECT *
FROM employees
ORDER BY hire_date DESC;

SELECT name, salary
FROM employees
ORDER BY name ASC;

SELECT *
FROM employees
ORDER BY department ASC, salary ASC;

SELECT *
FROM employees
LIMIT 10;

SELECT *
FROM employees
LIMIT 5 OFFSET 5;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 2 OFFSET 2;

SELECT *
FROM employees
ORDER BY name ASC
LIMIT 10;

SELECT DISTINCT department
FROM employees;

SELECT DISTINCT salary
FROM employees;

SELECT COUNT(DISTINCT department) AS total_departments
FROM employees;

SELECT DISTINCT department, salary
FROM employees;

SELECT department, MIN(name) AS employee_name
FROM employees
GROUP BY department;

INSERT INTO employees (id, name, department, salary, hire_date)
VALUES (16, 'Rahul', 'IT', 68000, '2024-01-10');

INSERT INTO employees (id, name, department, salary, hire_date)
VALUES
(17, 'Priya', 'HR', 54000, '2023-08-12'),
(18, 'Arjun', 'Finance', 61000, '2022-02-18'),
(19, 'Sneha', 'Sales', 47000, '2021-09-05');


CREATE TABLE hr_employees AS
SELECT * FROM employees WHERE department = 'HR';

SELECT *
FROM employees;

SELECT *
FROM hr_employees;

CREATE TABLE employees_backup AS
SELECT *
FROM employees;

SELECT *
FROM employees_backup ;

