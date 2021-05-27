-- List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.

SELECT
emp_no,
last_name,
first_name
FROM "Employees"
WHERE emp_no IN
(
	SELECT emp_no
	FROM "Dept_Emp"
	WHERE dept_no IN
	(	
		SELECT dept_no
		FROM "Departments"
		WHERE (dept_name = 'Sales') OR (dept_name = 'Development')
	)
);