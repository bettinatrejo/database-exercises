USE employees;


#Find all employees whose last name starts with 'E'
SELECT concat(first_name,' ',last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;

# Find all employees hired in the 90s and born on Christmas
# use datediff() to find how many days they have been working at the company
# (Hint: You will also need to use now() or curdate())
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%'
ORDER BY birth_date asc, hire_date DESC;

SELECT *, datediff(now(), hire_date) AS 'Days at Company'
From employees
WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%'
ORDER BY birth_date asc, hire_date DESC;

