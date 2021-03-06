USE employees;

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya' OR first_name = 'Maya'
ORDER BY first_name asc;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name asc, last_name asc;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name asc, first_name asc;

#Find all employees whose last name starts with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# Find all employees hired in the 90s and born on Christmas
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%'
ORDER BY birth_date asc, hire_date DESC;



