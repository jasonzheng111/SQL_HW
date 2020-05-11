

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select a.emp_no, a.last_name, a.first_name, a.sex, b.salary
from employees as a
left join salaries as b on a.emp_no=b.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

select a.emp_no, a.last_name, a.first_name, a.hire_date
from employees as a
where extract(year from a.hire_date)=1986;
-- 36150 rows affected.

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select a.dept_no,
b.dept_name,
a.emp_no, 
c.last_name, c.first_name
from dept_manager as a left join departments as b on a.dept_no=b.dept_no
left join employees as c on a.emp_no=c.emp_no;
-- 24 rows affected.

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select a.emp_no, 
c.last_name, c.first_name,b.dept_name
from dept_emp as a left join departments as b on a.dept_no=b.dept_no
left join employees as c on a.emp_no=c.emp_no;
-- 331603 rows affected.

select emp_no,count(distinct dept_no)
from dept_emp
group by emp_no
having count(distinct dept_no)>=2;
-- 31579 rows affected.

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select a.first_name ,a.last_name, a.sex
from employees as a
where first_name='Hercules' and last_name like 'B%';
-- 20 rows affected.

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select distinct dept_name from departments;

select a.emp_no, 
c.last_name, c.first_name,b.dept_name
from dept_emp as a left join departments as b on a.dept_no=b.dept_no
left join employees as c on a.emp_no=c.emp_no
where dept_name='Sales'
;
-- 52245 rows affected.


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select distinct dept_name from departments;

select a.emp_no, 
c.last_name, c.first_name,b.dept_name
from dept_emp as a left join departments as b on a.dept_no=b.dept_no
left join employees as c on a.emp_no=c.emp_no
where dept_name in ('Sales', 'Development')
;
-- 137952 

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(distinct emp_no) as cnt
from employees
group by last_name
order by cnt desc
-- 1638 rows affected.

