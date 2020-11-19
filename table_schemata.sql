--Make titles table
create table titles(
	title_id varchar(30) NOT NULL,
	title varchar(50) NOT NULL,
    --set primary key
    primary key (title_id)
);
--select all
select * from titles;

--Make employees table
create table employees(
	emp_no INT NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date DATE NOT NULL,
    --set primary and foreign key
    primary key (emp_no)
    foreign key (emp_title_id) references titles (title_id)
);

select * from employee;

--Make departments table
create table department(
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)

);

select * from department;

--Make dept_emp table
create table dept_emp(
	emp_no int NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employee(emp_no),
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (dept_no) references department(dept_no)
);