-- List the employee number, last name, first name, sex, and salary of each employee.
select employees.emp_no, employees.first_name, employees.last_name, salaries employees.sex
from employees
inner join salaries on 
salaries.emp_no = employees.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees 
where hire_date LIKE '%1986'

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT department_manager.dept_no, department.dept_name, department_manager.emp_no, employees.last_name, employees.first_name
FROM department_manager
JOIN employees
ON department_manager.emp_no = employees.emp_no
JOIN department 
ON department_manager.dept_no = department.dept_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select department_employee.dept_no, department_employee.emp_no, employees.first_name, employees.last_name, department.dept_name
from department_employee
join employees on 
department_employee.emp_no=employees.emp_no
join department on 
department_employee.dept_no=department.dept_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name.
select department_employee.dept_no, department_employee.emp_no, employees.first_name, employees.last_name, department.dept_name
from department_employee
join employees on 
department_employee.emp_no=employees.emp_no
join department on 
department_employee.dept_no=department.dept_no
where department.dept_no = 'd007'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select department_employee.dept_no, department_employee.emp_no, employees.first_name, employees.last_name, department.dept_name
from department_employee
join employees on 
department_employee.emp_no=employees.emp_no
join department on 
department_employee.dept_no=department.dept_no
where department.dept_no in ('d007', 'd005')

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name)
from employees
group by last_name