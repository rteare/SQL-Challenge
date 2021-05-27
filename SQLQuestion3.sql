-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
SELECT
"Dept_Manager".dept_no,
"Departments".dept_name,
"Dept_Manager".emp_no,
"Employees".last_name,
"Employees".first_name
FROM "Departments"
INNER JOIN "Dept_Manager" ON
"Dept_Manager".dept_no = "Departments".dept_no
INNER JOIN "Employees" ON
"Dept_Manager".emp_no = "Employees".emp_no;