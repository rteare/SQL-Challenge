-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.

SELECT
"Employees".emp_no,
"Employees".last_name,
"Employees".first_name,
"Departments".dept_name
FROM "Employees"
INNER JOIN "Dept_Emp" ON
"Dept_Emp".emp_no = "Employees".emp_no
INNER JOIN "Departments" ON
"Departments".dept_no = "Dept_Emp".dept_no
WHERE dept_name = 'Sales';