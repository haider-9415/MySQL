/*
	we can create groups inside groups with 'GROUP BY' clause
    
    1st field determines highest group level,
    2nd field determines 2nd group level,
    and so on &
    last field determines lowest group level
    
    we need to specify multiple fields 'GROUP BY' clause separated by comma
*/
use my_database;


-- this grouping will be on the basis of depart_no that tells the no. of employees in each depart_no
SELECT depart_no, count(depart_no)
FROM employee
GROUP BY depart_no;


-- in this, 1st grouping will be on the basis of depart_no & 2nd grouping will be on the basis of emp_job
-- this grouping will give no. of employees in each job of each depart_no
SELECT depart_no,emp_job, count(depart_no) AS "No_of_Employees"
FROM employee
GROUP BY depart_no, emp_job
ORDER BY depart_no;

-- this grouping will give average salary in each job of each depart_no
SELECT depart_no,emp_job, AVG(emp_salary) AS "Average_Salary"
FROM employee
GROUP BY depart_no, emp_job
ORDER BY depart_no;


-- using WHERE clause
SELECT depart_no,emp_job, count(depart_no) AS "No_of_Employees"
FROM employee
WHERE emp_salary>1500
GROUP BY depart_no, emp_job
ORDER BY depart_no;


-- this grouping will give average salary in each job of each depart_no
SELECT emp_job, depart_no, AVG(emp_salary) AS "Average_Salary"
FROM employee
GROUP BY emp_job, depart_no
ORDER BY emp_job;

-- this grouping will give no. of employees in each job of each depart_no
SELECT emp_job, depart_no, count(depart_no) AS "No_of_Employees"
FROM employee
GROUP BY emp_job, depart_no
ORDER BY emp_job;


-- three level grouping
SELECT depart_no, emp_job, emp_manager, count(depart_no) AS "No_of_Employees"
FROM employee
GROUP BY depart_no, emp_job, emp_manager
ORDER BY depart_no;