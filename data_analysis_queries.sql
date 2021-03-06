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

--5.) List first name, lsat name, and sex for employees whose first name is "Hercules" and last name begins with a "B."
select first_name, last_name, sex 
from employees 
where first_name = 'Hercules' and last_name like 'B%';

--#6 List all employees in the sales department, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first__name, department.dept_name
from employees
    INNER JOIN dept_emp on
    employees.emp_no=dept_emp.emp_no
    INNER JOIN department on
    department.dept_no=dept_emp.dept_no
    where dept_name ='Sales';

--7.) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, department.dept_name
from employees
    INNER JOIN dept_emp on
    employees.emp_no = dept_emp.emp_no
    INNER JOIN department on
    department.dept_no = dept_emp.dept_no
    --where dept_name = 'Sales' and dept_name = 'Development';
    where dept_name = 'Sales' or dept_name = 'Development';

--8.) In descending order, list the frequency count of employee last names, i.e, how many employees share the last name.
select count(last_name) from employees
group by last_name
--order by total DESC(TRUE)
order by total DESC;