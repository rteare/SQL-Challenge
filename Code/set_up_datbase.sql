-- Create table for employee titles
CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create table for employee
CREATE TABLE employees (
    emp_no Integer   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- Create table for employee salaries
CREATE TABLE salaries (
    emp_no Integer   NOT NULL,
    salary Integer   NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create table for company departments
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create table for department employees
CREATE TABLE dept_emp (
    emp_no Integer   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- Create table for department mangagers
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no Integer   NOT NULL,
    PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);