--to count the number of rows in table
select count(*) from employees;

--Examples of SELECT Query
select first_name,last_name,birth_date from employees limit 5;
select first_name,last_name,gender from employees limit 10;
select emp_no,hire_date from employees limit 15;

--Examples of Distinct keyword
select distinct emp_no from employees limit 10;
select distinct emp_no,first_name from employees limit 10;
select distinct emp_no from salaries where salary between 60000 and 60001;
select distinct emp_no from salaries where salary = 60000;

--Examples of where clause
select * from employees where emp_no > 499977;
select * from employees where emp_no < 10005;
select * from employees where gender = 'F' limit 15;
select * from employees where emp_no >= 499977;
select * from employees where emp_no <= 10005;
select * from employees where gender <> 'M' Limit 5 -- < > is used for not equals to.
select * from employees where emp_no between 10001 and 10010;
select distinct emp_no from salaries where salary between 60000 and 60001;

 --Examples of sql and & or operators
 select * from employees where gender = 'F' AND emp_no < 10025;
 select * from employees where hire_date = 1985-11-21 OR last_name = 'Simmel';
 select * from salaries where emp_no = 10001 AND (salary = 60117 OR salary = 62102);
 
 --Examples of order by Keyword
 select * from employees order by gender;
 
 -- order with where clause
 select * from employees where emp_no between 17000 and 17007 order by gender; 
 /* Order by keyword is used to sort the result-set.
 The ORDER BY keyword sorts the records in ascending order by default.
 To sort the records in a descending order, you can use the DESC keyword.*/
 
 --Examples of Insert into statement
 /*The INSERT INTO statement is used to insert new records in a table.
 The first form does not specify the column names where the data will be inserted,
only their values:
INSERT INTO table_name
VALUES (value1,value2,value3,...);

The second form specifies both the column names and the values to be inserted:
INSERT INTO table_name (column1,column2,column3,...)
VALUES (value1,value2,value3,...);*/
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
 values ('1000000', '1992-08-25', 'Marshal', 'Fernandez', 'M', '1988-01-12');
 
 --Examples of UPDATE statements
 --The UPDATE statement is used to update existing records in a table.

UPDAte employess set first_name = 'Aparajita' where emp_no = 1000000

--Example of DELETE Statement
--We can delete one row at a time by using the following statement
delete from employees where first_name = 'Georgi' AND last_name = 'Facello';
-- OR, we can delete all rows of a table at a time by the following statement
--Be very careful when deleting records. You cannot undo this statement!
DELETE FROM table_name;

or

DELETE * FROM table_name;

-- SELECT TOP Clause
select * from employees limit 3; --Mysql Syntax
SELECT * FROM employess WHERE ROWNUM <=5; --Oracle Syntax
SELECT TOP 2 * FROM employess; -- sql syntax
SELECT TOP 50 PERCENT * FROM Customers;

--SQL LIKE operator Examples
select distinct title from titles where title like '%engineer%';
select title,count(title) from titles where title like '%engineer%' group by title;
select distinct title from titles where title like 'enginee_';
select distinct title from titles where title not like '%engineer%';

--SQL Wildcard Characters
Wildcard	Description
%	A substitute for zero or more characters
_	A substitute for a single character
[charlist]	Sets and ranges of characters to match
[^charlist]
or
[!charlist]	Matches only a character NOT specified within the brackets

--SQL IN Operator examples
select * from titles where title in ('Staff', 'Engineers') limit 10;
select * from titles where title in ('Staff', 'Engineer') limit 10;