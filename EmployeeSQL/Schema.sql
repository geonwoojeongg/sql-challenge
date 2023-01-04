-- Create Table Schemas for each csv

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR
);

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR
);

CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no) NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY(emp_no, dept_no) NOT NULL
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT,
	PRIMARY KEY(emp_no, salary) NOT NULL
);




SELECT * FROM titles


-- List the employee number, last name, first name, sex, and salary of each employee.


-- List the first name, last name, and hire date for the employees who were hired in 1986.
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
-- List each employee in the Sales department, including their employee number, last name, and first name.
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
