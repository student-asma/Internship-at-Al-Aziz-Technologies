CREATE TABLE departments
( 
dept_id SERIAL PRIMARY KEY, 
dept_name VARCHAR(50) NOT NULL );

CREATE TABLE employees
( emp_id SERIAL PRIMARY KEY, 
emp_name VARCHAR(50) NOT NULL, 
dept_id INT REFERENCES departments(dept_id), 
salary NUMERIC, city VARCHAR(50) ); 

INSERT INTO departments (dept_name) VALUES ('Sales'), ('IT'), ('HR'); 
INSERT INTO employees (emp_name, dept_id, salary, city)
VALUES 
('Ali', 1, 50000, 'Lahore'), 
('Sara', 2, 60000, 'Karachi'), 
('Usman', 1, 55000, 'Lahore'), 
('Ayesha', 3, 45000, 'Islamabad'), 
('Bilal', 2, 60000, 'Lahore'); 

SELECT * FROM employees;
SELECT * FROM departments;

SELECT emp_name, salary FROM employees 
WHERE salary > 50000;

SELECT DISTINCT city FROM employees;

SELECT * FROM employees ORDER BY salary DESC;






