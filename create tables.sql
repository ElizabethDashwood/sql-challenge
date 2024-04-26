drop table employees;

create table departments (
	dept_no char(4) not null primary key,
	dept_name varchar(255) not null
);

select * from departments;

create table titles (
	title_id char(5) not null primary key,
	title varchar(255) not null
);

select * from titles;

create table employees (
	emp_no int primary key,
	emp_title_id char(5) not null,
	birth_date date not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	sex char(1) not null,
	hire_date date not null
);

select * from employees;

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


