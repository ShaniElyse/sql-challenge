--List the employee number, last name, first name, sex, and salary of each employee
Select e.emp_no,last_name,first_name,sex,salary
from employee e
inner join salaries s
on e.emp_no = s.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986
Select first_name,last_name,hire_date
from employee e
where date_part('year',e.hire_date) = 1986

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
Select d.dept_no, d.dept_name, e.emp_no, last_name, first_name
from employee e
inner join dept_manager dm
on e.emp_no = dm.emp_no
inner join departments d
on dm.dept_no = d.dept_no

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
Select d.dept_no, e.emp_no, last_name, first_name, d.dept_name
from employee e
inner join dept_emp de
on e.emp_no = de.emp_no
inner join departments d
on de.dept_no = d.dept_no

