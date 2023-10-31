USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, departments.dept_name AS DEPARTMENT_NAME
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, departments.dept_name AS DEPARTMENT_NAME
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date = '9999-01-01'
AND employees.gender = 'f';

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS title, COUNT(*) AS total
FROM titles
JOIN dept_emp
ON titles.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE titles.to_date = '9999-01-01'
AND dept_emp.to_date = '9999-01-01'
AND dept_emp.dept_no = 'd009'
GROUP BY title;

# Find the current salary of all current managers.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Department_Manager, departments.dept_name AS DEPARTMENT_NAME, salaries.salary
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
JOIN salaries  on employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01'
AND salaries.to_date = '9999-01-01';