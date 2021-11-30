
--Create departments table
Drop Table If Exists departments

Create Table departments(
	dept_no varchar(15) Not Null,
	dept_name varchar(30) Not Null, 
	Primary Key (dept_no)
);
Select * From departments

--Create employees table
Drop Table If Exists employees

Create Table employees(
	emp_no INT Not Null, 
	emp_title_id Varchar(15) Not Null,
	birth_date Date Not Null,
	first_name varchar(30) Not Null,
	last_name varchar(30) Not Null,
	sex varchar(1) Not Null,
	hire_date Date Not Null,
	Primary Key (emp_no)
);
Select * From employees

--Create dept_emp table
Drop Table If Exists dept_emp

Create Table dept_emp(
	dept_no varchar(15) Not Null,
	emp_no INT Not Null, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
Select * From dept_emp

--Create dept_manager table
Drop Table If Exists dept_manager

Create Table dept_manager(
	dept_no varchar(15) Not Null,
	emp_no INT Not Null, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
Select * From dept_manager

--Create salary table
Drop Table If Exists salary

Create Table salary(
	emp_no INT Not Null,
	salary INT Not Null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
    );
Select * From salary

--Create salary table
Drop Table If Exists title

Create Table title(
	title_id varchar(10) Not Null,
	title varchar(30) Not Null
	);
Select * From title

 