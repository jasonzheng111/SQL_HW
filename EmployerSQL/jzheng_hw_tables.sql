-- -- drop table if exists employees;
-- -- drop table if exists titles;
-- -- drop table if exists departments;

create table titles (
	title_id varchar(10) not null,
	title varchar(50) 
);

create table departments (
	dept_no	varchar(10) not null,
	dept_name varchar(100) 
);

create table employees (
	emp_no	varchar(20) not null primary key,
	emp_title_id varchar(20) not null,
	birth_date date ,
	first_name varchar(50),
	last_name varchar(50),
	sex varchar(2),
	hire_date date
);

create table dept_manager (
	dept_no	varchar(10) not null,
	emp_no	varchar(20) not null
);

create table dept_emp (
	emp_no	varchar(20) not null,
	dept_no	varchar(10) not null
);

create table salaries(
	emp_no	varchar(20) not null,
	salary	int not null
);

