USE employees;

    SELECT CONCAT(emp_no, ' - ', last_name, ",", first_name) AS full_name, emp_no AS DOB
    FROM employees
        GROUP BY emp_no
    LIMIT 10;