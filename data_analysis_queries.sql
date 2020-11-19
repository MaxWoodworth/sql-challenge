--1.) List the following details of each employee: employee number, last name, first name, sex, and salary
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, employees.salary
from employees
    INNER JOIN salaries
        ON (employees.emp_no=salaries.emp_no);

--2.) List first name, last name, and hire date for employees who were hired in 1986
select first_name, last_name, hire_date from employees
where hire_date >= '1986-01-01' and hire date <= '1986-12-31';

--3.) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, and first name.
select employees.emp_no, employees.last_name, employees.first_name, dept_manager.dept_no, department.dept_name
from dept_manager
    INNER JOIN employees on
    dept_manager.emp_no=employees.emp_no
    INNER JOIN departments on
    dept_manager.dept_no=departments.dept_no;

--4.) List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, department.dept_name
from employees
    INNER JOIN dept_emp on
    employees.emp_no=dept_emp.emp_no
    INNER JOIN department on
    dept_emp.dept_no=department.dept_no;