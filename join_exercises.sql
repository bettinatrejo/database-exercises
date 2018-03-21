USE employees;

SELECT * FROM employees;
Select * FROM dept_emp;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM titles;
SELECT * FROM salaries;


# query that shows each department along with the name of the current manager for that department
SELECT d.dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name ASC;


# Find the name of all departments currently managed by women
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
  JOIN dept_manager as de
    On de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY dept_name;


# Find the current titles of employees currently working in the Customer Service department
SELECT t.title AS 'Title', Count(*) AS Count
FROM employees as e
  JOIN titles as t
    ON t.emp_no = e.emp_no
  JOIN dept_emp as de
    ON t.emp_no = de.emp_no
WHERE de.dept_no = 'd009' AND de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
GROUP BY title;

# Find the current salary of all current managers
SELECT d.dept_name AS 'Department Name',CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary as Salary
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  JOIN salaries as s
    ON s.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY dept_name ASC;

# Bonus: Find the names of all current employees, their department name, and their current manager's name
Select CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(m.first_name, ' ', m.last_name) AS 'Manager Name'
FROM employees AS e
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
  JOIN dept_manager AS dm
    ON de.dept_no = dm.dept_no
  JOIN employees AS m
    ON m.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY dept_name;

# Bonus: Write a query to get the average salary current managers make by gender
SELECT gender,avg(salary)
FROM employees AS e
  JOIN salaries AS s
    ON s.emp_no = e.emp_no
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
GROUP BY gender;


# Bonus: Write a query to get the avg salary managers historically make by gender
SELECT gender,avg(salary)
FROM employees AS e
  JOIN salaries AS s
    ON s.emp_no = e.emp_no
  JOIN dept_manager AS dm
    ON dm.emp_no = e.emp_no
GROUP BY gender;


# Bonus: get avg salary for all current employees by gender
SELECT gender,avg(salary)
FROM employees AS e
  JOIN salaries AS s
    ON s.emp_no = e.emp_no
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
WHERE s.to_date = '9999-01-01' AND de.to_date = '9999-01-01'
GROUP BY gender;

# Bonus: get avg historic salary for all employees by gender
SELECT gender,avg(salary)
FROM employees AS e
  JOIN salaries AS s
    ON s.emp_no = e.emp_no
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
GROUP BY gender;