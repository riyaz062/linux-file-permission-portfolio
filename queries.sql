-- Retrieve employees in the Marketing department (East building)
SELECT *
FROM employees
WHERE department = 'Marketing'
AND office LIKE 'East%';

-- Retrieve employees in Finance or Sales
SELECT *
FROM employees
WHERE department = 'Finance'
OR department = 'Sales';

-- Retrieve login attempts outside Mexico
SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';

-- Retrieve after-hours failed login attempts
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
AND success = FALSE;
