--1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
INTO employee_summary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
INTO hires_of_1986
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
INTO managers
FROM departments
JOIN dept_manager 
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
INTO employees_departments
FROM departments
JOIN dept_emp
ON departments.dept_no = dept_emp.dept_no
JOIN employees
ON employees.emp_no = dept_emp.emp_no;


--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees.first_name, employees.last_name, employees.sex
INTO hercules_employees
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


--6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept_emp.emp_no, departments.dept_no, departments.dept_name, employees.last_name, employees.first_name
INTO sales_employees
FROM dept_emp
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';


--7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_emp.emp_no, departments.dept_no, departments.dept_name, employees.last_name, employees.first_name
INTO sales_and_development_employees
FROM dept_emp
INNER JOIN employees
ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Development', 'Sales');



--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT COUNT(last_name), employees.last_name
INTO employee_lastnames
FROM employees
GROUP BY employees.last_name
ORDER BY last_name DESC;
