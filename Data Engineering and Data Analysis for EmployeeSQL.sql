drop table titles;

create table departments (
	dept_no char(4) primary key,
	dept_name varchar(255) not null
);

select * from departments;

create table titles (
	title_id char(5) primary key,
	title varchar(255) not null
);

select * from titles;

create table employees (
	emp_no int primary key,
	emp_title_id char(5) not null,
	birth_date varchar(10),
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	sex char(1) not null,
	hire_date varchar(10)
);

select 
first_name,
last_name,
hire_date
from employees
where hire_date like '%/1986';

create table salaries (
	emp_no int not null,
	salary int
);

select * from salaries;

create table dept_emp (
	emp_no int not null,
	dept_no char(4) not null
);

create table dept_manager (
	dept_no char(4) not null,
	emp_no int not null
);


-- Data Analysis
-- Task 1 List the employee enumber, last name, first name sex and salary of each employee
select e.emp_no,
	e.last_name,
	e.first_name,
	e.hire_date,
	e.sex,
	s.salary
from employees as e
inner join salaries as s on
s.emp_no = e.emp_no;

-- Task 2 List the first name, last name and hire date for the employees who were hired in 1986
select 
first_name,
last_name,
hire_date
from employees
where hire_date like '%/1986';

-- Task 3 List the manager of each department along with their department number, department name, employee number, last name and first name








-- Task 4 List the department number for each employee along with that employee's employee number, last name, first name and department name.



-- Task 5. List the first name, last name and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select e.first_name,
	e.last_name,
	e.sex
from employees as e
where first_name = 'Hercules'
and last_name like 'B%';

-- Task 6. List each employee in the Sales department, including their emplyee number, last name, and first name



-- Task 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- List the frequency counts, in descending order, of all employee last names (that is, how many employees share each last name)

select e.last_name, count(*) as count
from employees as e
group by e.last_name
order by count desc;