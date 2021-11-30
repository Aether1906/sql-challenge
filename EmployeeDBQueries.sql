--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select  employees.emp_no, 
		employees.last_name, 
		employees.first_name, 
		employees.sex, 
		salary.salary     
From employees
Left Join salary
On employees.emp_no = salary.emp_no
Order BY emp_no 

--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date
From employees 
Where hire_date >= '01-01-1986' AND hire_date <= '12-31-1986'
Order by hire_date ASC

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
Select dept_manager.emp_no,
	   employees.first_name,
	   employees.last_name,
	   dept_manager.dept_no,
	   departments.dept_name
	   
FROM dept_Manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
Select employees.emp_no,
	   employees.first_name,
	   employees.last_name,
	   departments.dept_name
FROM employees
INNER JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select  employees.first_name,
		employees.last_name, 
		employees.sex
From employees
Where employees.first_name = 'Hercules' And employees.last_name Like 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

Select employees.emp_no,
	   employees.first_name,
	   employees.last_name,
	   departments.dept_name
FROM employees

JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
Select employees.emp_no,
	   employees.first_name,
	   employees.last_name,
	   departments.dept_name
FROM employees

JOIN dept_emp ON
employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Sales' or departments.dept_name = 'Development';


--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;