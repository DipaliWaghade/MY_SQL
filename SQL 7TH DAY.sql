CREATE DATABASE JOINTS_DB;
USE JOINTS_DB;

CREATE TABLE DEPARTMENTS_1(
DEPARTMENT_ID INT PRIMARY KEY,
DEPARTMENT_NAME varchar(50)
);

INSERT INTO DEPARTMENTS_1 (DEPARTMENT_ID,DEPARTMENT_NAME) VALUES
(1,'HR'),
(2,'FINANCE'),
(3,'MARKETING'),
(4,'IB');

CREATE TABLE EMPLOYEES_1(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(50),
DEPARTMENT_ID int,
SALLARY DECIMAL(10,2),
FOREIGN KEY(DEPARTMENT_ID) REFERENCES DEPARTMENTS_1(DEPARTMENT_ID)
);

INSERT INTO EMPLOYEES_1( EMP_ID,EMP_NAME,DEPARTMENT_ID,SALLARY)
VALUES
(1,'RAGHAV',1,'70000.00'),
(2,'BOB',2,'60000.00'),
(3,'RINA',3,'50000.00'),
(4, 'PRANAV',4,'60000.00'),
(5, 'TRUPTI',3,'80000.00'),
(6,'SAGAR',NULL,'20000.00');

# INNER JOIN

SELECT e.emp_name, e.salary, d.department_name FROM employees_1 e
INNER JOIN departments d
ON e.department_id = d.department_id;

#UNION 
SELECT e.emp_name, e.salary, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id
UNION
SELECT e.emp_name, e.salary, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;

#CROSS JOIN
SELECT e.emp_name, d.department_name
FROM employees e
CROSS JOIN departments d;

SELECT e1.emp_name AS Employee1, e2.emp_name AS Employee2
FROM employees e1
INNER JOIN employees e2
ON e1.department_id = e2.department_id
WHERE e1.emp_id != e2.emp_id;

















