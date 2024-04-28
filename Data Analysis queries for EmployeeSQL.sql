-- Data Analysis
-- Task 1 List the employee number, last name, first name, sex and salary of each employee
select e.emp_no AS "employee number",
	e.last_name AS "last name",
	e.first_name AS "first name",
	e.sex,
	s.salary
from employees as e
inner join salaries as s on
s.emp_no = e.emp_no;

-- Task 2 List the first name, last name and hire date for the employees who were hired in 1986
select 
first_name AS "first name",
last_name AS "last name",
hire_date AS "hire date"
from employees
where hire_date like '%/1986';

-- Task 3 List the manager of each department along with their department number, department name, employee number, last name and first name

select
e.emp_no AS "employee number",
e.first_name AS "first name",
e.last_name AS "last name",
d.dept_no AS "department number",
d.dept_name AS "department name"
from employees AS e
join dept_manager as m
on m.emp_no = e.emp_no
join departments as d
on d.dept_no = m.dept_no;

-- Task 4 List the department number for each employee along with that employee's employee number, last name, first name and department name.

select
m.emp_no AS "employee number",
e.first_name AS "first name",
e.last_name AS "last name",
m.dept_no AS "department number",
d.dept_name AS "department name"
from dept_emp AS m
join employees as e
on e.emp_no = m.emp_no
join departments as d
on d.dept_no = m.dept_no;


-- Task 5. List the first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select 
	e.first_name AS "first name",
	e.last_name AS "last name",
	e.sex
from employees as e
where first_name = 'Hercules'
and last_name like 'B%';

-- Task 6. List each employee in the Sales department, including their employee number, last name, and first name

select
m.emp_no AS "employee number",
e.first_name AS "first name",
e.last_name AS "last name",
d.dept_name AS "department name"
from dept_emp AS m
join employees as e
on e.emp_no = m.emp_no
join departments as d
on d.dept_no = m.dept_no
where d.dept_name = 'Sales';


-- Task 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select
m.emp_no AS "employee number",
e.first_name AS "first name",
e.last_name AS "last name",
d.dept_name AS "department name"
from dept_emp AS m
join employees as e
on e.emp_no = m.emp_no
join departments as d
on d.dept_no = m.dept_no
where d.dept_name = 'Sales'
UNION
select
m.emp_no AS "employee number",
e.first_name AS "first name",
e.last_name AS "last name",
d.dept_name AS "department name"
from dept_emp AS m
join employees as e
on e.emp_no = m.emp_no
join departments as d
on d.dept_no = m.dept_no
where d.dept_name = 'Development';


-- List the frequency counts, in descending order, of all employee last names (that is, how many employees share each last name)

select e.last_name as "last name", count(*) as count
from employees as e
group by e.last_name
order by count desc;
