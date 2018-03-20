USE employees;

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT first_name
FROM employees
WHERE first_name = 'Irena'
      OR first_name = 'Vidya' OR first_name = 'Maya';

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Add a condition to the previous query to find everybody with those names who is also male
SELECT first_name, gender
FROM employees
WHERE gender = 'M'
      AND (first_name = 'Irena'
           OR first_name = 'Vidya' OR first_name = 'Maya');

#Find all employees whose last name starts with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%';


# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

# Find all employees whose last name starts or ends with 'E'
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# Find all employees hired in the 90s
SELECT hire_date
FROM employees
WHERE hire_date LIKE '199%';

# Find all employees born on Christmas
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE birth_date LIKE '%12-25';







