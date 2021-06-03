-- List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name

SELECT
dept_Manager.dept_no,
departments.dept_name,
dept_Manager.emp_no,
employees.last_name,
employees.first_name
FROM departments
INNER JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;