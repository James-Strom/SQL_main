SELECT first_name, last_name, school
FROM teachers
ORDER BY school, last_name;
-----------------------------------
SELECT first_name, last_name, school, salary
FROM teachers
WHERE first_name LIKE 'S%'
	AND salary > 40000;
-----------------------------------------------------------
SELECT last_name, first_name, school, hire_date, salary
FROM teachers
WHERE hire_date >= '2010-01-01'
ORDER BY salary DESC;