-- List the department of each employee with the following information: 
-- employee number
-- last name
-- first name
-- department name

SELECT
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp" ON
"Employees".emp_no = "Dept_Emp".emp_no
INNER JOIN "Departments" ON
"Dept_Emp".dept_no = "Departments".dept_no