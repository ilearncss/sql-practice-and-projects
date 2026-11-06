USE company_dataset;
-- Retrieve the first name, last name, and salary of all employees.
SELECT
	first_name,
    last_name,
    salary
FROM EMPLOYEE;
-- Find employees earning more than $70,000.
SELECT
	emp_id,
    first_name,
    last_name,
    salary
FROM EMPLOYEE
WHERE salary > 70000;

-- Retrieve employees hired after January 1, 2021.
SELECT*
FROM EMPLOYEE
WHERE hire_date > '2021-01-01';

-- 	Display all unique cities where company branches are located. Means to remove dulpicate entries
SELECT DISTINCT city
FROM BRANCH;


-- 	Find the five highest-paid employees.
SELECT*
FROM EMPLOYEE
ORDER BY salary DESC
LIMIT 5;

-- Retrieve all clients belonging to the Logistics industry.
SELECT*
FROM CLIENT
WHERE industry = 'Logistics';

-- Find employees whose job title is Developer.
SELECT*
FROM WORKS_ON
WHERE role = 'Developer';

-- Display all projects currently marked as In Progress.
SELECT*
FROM PROJECT
WHERE status = 'In Progress'