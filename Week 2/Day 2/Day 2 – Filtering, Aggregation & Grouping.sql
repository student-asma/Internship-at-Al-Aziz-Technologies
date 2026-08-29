INSERT INTO employees (emp_name, dept_id, salary, city)
VALUES ('Hina', 1, 48000, 'Lahore'),
('Kamran', 3, NULL, 'Islamabad'),
('Zara', 2, 65000, 'Karachi'),
('Faisal', NULL, 40000, 'Multan');

SELECT * FROM employees;
SELECT * FROM employees WHERE salary >= 55000; 
SELECT * FROM employees WHERE salary != 50000;
SELECT * FROM employees WHERE dept_id = 1 AND salary > 45000;
SELECT * FROM employees WHERE city = 'Lahore' OR city = 'Karachi';
SELECT * FROM employees WHERE city IN ('Lahore', 'Karachi');
SELECT * FROM employees WHERE salary BETWEEN 45000 AND 60000;
SELECT * FROM employees WHERE emp_name LIKE 'A%'; 
SELECT * FROM employees WHERE emp_name LIKE '%a'; 
SELECT COUNT(*) FROM employees;
SELECT * FROM employees WHERE salary IS NULL; 
SELECT * FROM employees WHERE dept_id IS NOT NULL; 
SELECT SUM(salary) FROM employees;
SELECT AVG(salary) FROM employees; 
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;

SELECT dept_id, COUNT(*) AS total_employees,
AVG(salary) AS avg_salary 
FROM employees GROUP BY dept_id;

SELECT dept_id, AVG(salary) AS avg_salary
FROM employees GROUP BY dept_id
HAVING AVG(salary) > 50000; 

SELECT emp_name, salary, 
CASE WHEN salary >= 60000 
THEN 'High' WHEN salary >= 45000 
THEN 'Medium' WHEN salary IS NULL 
THEN 'Not Available' ELSE 'Low' 
END AS salary_category FROM employees; 






