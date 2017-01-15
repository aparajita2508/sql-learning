--Aliases examples
--SQL aliases are used to temporarily rename a table or a column heading.
select title as designation from titles;
select from_date as date_of_joining from titles;

--SQL Joins Examples------
--SQL joins are used to combine rows from two or more tables.
 select emp_no,current_dept_emp.dept_no,departments.dept_name
 from current_dept_emp,departments
 where current_dept_emp.dept_no = departments.dept_no limit 5; --This is an example of simple join
 --This is an example of inner join
 select emp_no,current_dept_emp.dept_no,departments.dept_name from current_dept_emp
 inner join departments on current_dept_emp.dept_no = departments.dept_no limit 5;
 
 select emp_no,current_dept_emp.dept_no,departments.dept_name from current_dept_emp
 inner join departments on current_dept_emp.dept_no = departments.dept_no limit 5; --we can do inner join in this way also
 --This is an example of right join
 select emp_no,current_dept_emp.dept_no,departments.dept_name from current_dept_emp
 right join departments on current_dept_emp.dept_no = departments.dept_no limit 5;
 --This is an example of left join
 select emp_no,current_dept_emp.dept_no,departments.dept_name from current_dept_emp
 left join departments on current_dept_emp.dept_no = departments.dept_no limit 5;
 
 --This is an example of join with aliases in which current_dept_emp.dept_no = cde and departments = de created via aliases
 select emp_no, cde.dept_no,de.dept_name from current_dept_emp as cde inner join departments as de on cde.dept_no = de.dept_no limit 5;
 