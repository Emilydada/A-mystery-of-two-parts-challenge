drop table employees
--Qusetion 1:  List the following details of each employee: employee number, last name, first name, sex, and salary.

CREATE TABLE employees
(empl_no varchar,
title varchar,
birth_date varchar,
first_name varchar,
last_name varchar,
sex varchar,
hire_date varchar);

select * from employees
delete from employees
where empl_no='emp_no'

SELECT employees.empl_no, employees.first_name, employees.last_name, employees.sex, salaries.salaries
FROM salaries
INNER JOIN employees ON
employees.empl_no = salaries.empl_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
select * from employees

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'

--Question 3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
drop table managers
Create table managers 
(dept_no varchar,
mnger_emplo_no varchar);

select * from managers
delete from managers
where dept_no='dept_no'

Create table departments
(dept_no varchar,
dept_name varchar);

select* from departments
delete from departments
where dept_no='dept_no'

SELECT managers.dept_no, departments.dept_name, managers.mnger_emplo_no,employees.first_name, employees.last_name
FROM departments
INNER JOIN managers ON
managers.dept_no = departments.dept_no
INNER JOIN employees ON
managers.mnger_emplo_no = employees.empl_no

--Question 4 List the department of each employee with the following information: employee number, last name, first name, and department name.
Drop table department_employee
Create table department_employee
(depart_emplo_no varchar,
 depart_no varchar);

select * from department_employee
delete from department_employee
where depart_emplo_no='emp_no'

select department_employee.depart_emplo_no, department_employee.depart_no, departments.dept_name, employees.first_name,employees.last_name
from department_employee
inner join departments on
department_employee.depart_no = departments.dept_no
inner join employees on
department_employee.depart_emplo_no = employees.empl_no

--Question 5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

-- Question 6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
select distinct department_employee.depart_emplo_no, departments.dept_name, employees.first_name,employees.last_name
from department_employee
inner join departments on
departments.dept_name = 'Sales'
inner join employees on
department_employee.depart_emplo_no = employees.empl_no

--Question 7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select distinct department_employee.depart_emplo_no, departments.dept_name, employees.first_name,employees.last_name
from department_employee
inner join departments on
departments.dept_name = 'Sales' or departments.dept_name = 'Development'
inner join employees on
department_employee.depart_emplo_no = employees.empl_no

--Question 8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select distinct count(last_name) as "count", employees.last_name
from employees
group by last_name
order by "last_name" desc












