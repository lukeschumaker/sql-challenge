DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;

-- Create new table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (10) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

-- Create new table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments(
	dept_no VARCHAR (10) NOT NULL,
	dept_name VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (10) NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
	title_id VARCHAR (10) NOT NULL,
	title VARCHAR (20) NOT NULL,
	PRIMARY KEY (title_id)
);
