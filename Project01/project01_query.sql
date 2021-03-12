-- Department Table
CREATE TABLE departments(
	dept_id bigserial,
	dept_name VARCHAR(80),
	CONSTRAINT dept_key PRIMARY KEY (dept_id),
	CONSTRAINT dept_name_unique UNIQUE(dept_name)
);
-- Create Table Salaries
CREATE TABLE salaries(
	salary_id serial,
	salary numeric,
	CONSTRAINT salary_key PRIMARY KEY (salary_id)
);
-- Create Table titles
CREATE TABLE titles(
	title_id serial,
	title VARCHAR(50),
	CONSTRAINT title_key PRIMARY KEY (title_id)
);

-- Create Table overtime
CREATE TABLE overtime(
	overtime_id serial,
	overtime_hours numeric,
	CONSTRAINT overtime_key PRIMARY KEY (overtime_id)
);
-- Employee Table
CREATE TABLE employees (
	emp_no bigserial,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	id_number VARCHAR(10),
	email VARCHAR(100),
	gender CHAR (1),
	birth_date DATE,
	CONSTRAINT emp_no_key PRIMARY KEY (emp_no),
	CONSTRAINT id_number_unique UNIQUE(id_number)
);

alter table employees
add column dept_id integer REFERENCES departments(dept_id);

alter table employees
add column salary integer REFERENCES salaries (salary_id);

alter table employees
add column title_id integer REFERENCES titles (title_id);

alter table employees
add column overtime integer REFERENCES overtime (overtime_id);

INSERT INTO employees(first_name, last_name,id_number,gender,birth_date, email,dept_id, salary, overtime, title_id)
VALUES
('Walter','White','5512394381','M','1955-04-11','ww@bb.com',1,1,1,1),
('Jesse','Pinkman','7914294381','M','1979-06-21','jp@bb.com',1,3,2,3),
('Skylar','White','5704234381','F','1957-04-23','sw@bb.com',3,2,3,2),
('Saul','Goodman','6345394381','M','1963-08-13','sg@bb.com',2,4,4,7),
('Gus','Fring','5312394381','M','1953-01-27','gf@bb.com',4,5,5,4),
('Mike','Ehrmantraut','4812393431','M','1948-02-27','me@bb.com',5,6,6,6),
('Hank','Schrader','5623545281','M','1956-10-17','hs@bb.com',5,7,7,5);

INSERT INTO departments(dept_name)
VALUES
	('Chemistry'),
	('Lawyer'),
	('Marketing'),
	('Logistics'), 
	('HR');
	
INSERT INTO titles(title)
	VALUES
		('CEO'),
		('CFO'),
		('CMO'),
		('COO'),
		('Head of security'),
		('Head of HR'),
		('Consultant');

INSERT INTO salaries(salary)
	VALUES
		('10000000'),
		('9000000'),
		('7000000'),
		('8000000'),
		('6000000'),
		('5000000'),
		('4000000');
	
INSERT INTO overtime(overtime_hours)
	VALUES
		('0'),
		('100'),
		('10'),
		('30'),
		('50'),
		('15'),
		('20');
		
SELECT emp.first_name, emp.last_name, emp.email, emp.id_number, emp.birth_date, dept.dept_name, 
titles.title,sal.salary, ove.overtime_hours
FROM employees AS emp 
LEFT JOIN titles
on emp.title_id = titles.title_id
LEFT JOIN departments AS dept
ON emp.dept_id = dept.dept_id
LEFT JOIN salaries AS sal
ON emp.salary = sal.salary_id
LEFT JOIN overtime AS ove
ON emp.overtime = ove.overtime_id;



		