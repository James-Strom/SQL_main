SELECT * FROM teachers;
-------------------------------------
SELECT first_name, last_name FROM teachers;
---------------------------------------------------------
SELECT DISTINCT school
FROM teachers;
----------------------------------------------------------
SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary;
----------------------------------------------------------
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';
----------------------------------------------------------
SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';
---------------------------------------------------------
SELECT first_name, last_name, school
FROM teachers
WHERE first_name like 'Ja%';
--------------------------------------------------------
SELECT first_name, last_name, school
FROM teachers
WHERE first_name like 'ja%';
-------------------------------------------------------
SELECT first_name, last_name, school
FROM teachers
WHERE first_name ilike 'ja%';
--------------------------------------------------------
SELECT first_name, last_name, salary, school
FROM teachers
WHERE salary BETWEEN 20000 AND 40000;
-------------------------------------------------------
SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;
---------------------------------------------