/*
	we can combine all records having identical values in a perticular field
    or a group of fields using "GROUP BY"
    
    in other words, it is used in SELECT statement to divide the table into 
    gorups
    
    Syntax:
		SELECT column_name, function(column_name)
		FROM table_name
		[WHERE condition]
        GROUP BY column_name
        ORDER BY column_name;
    

*/

use my_database;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(25),
    emp_job VARCHAR(25),
    emp_manager INT,
    emp_HD DATE,
    emp_salary DECIMAL(10 , 2 ),
    commision DECIMAL(10 , 2 ),
    depart_no INT
);

insert into employee
values(8369,'smith','clerk',8902,'1990-12-18',800.00,null,20),
	  (8499,'anya','salesman',8698,'1991-02-18',1600.00,300.00,30),
      (8521,'seth','salesman',8698,'1991-02-28',1250.00,500.00,30),
      (8566,'mahadevan','manager',8838,'1991-12-08',2985.00,null,20),
      (8645,'momin','salesman',8698,'1991-12-18',1250.00,1400.00,30),
      (8698,'bina','manager',8839,'1991-09-23',2850.00,null,30),
      (8882,'shivansh','manager',8839,'1992-12-09',2450.00,null,10),
      (8888,'scott','analyst',8569,'1993-11-18',3000.00,null,20),
      (8839,'amir','president',null,'1992-05-02',5000.00,null,10),
      (8844,'kuldeep','salesman',8698,'1991-12-19',1500.00,0.00,30),
      (8886,'anup','clerk',8888,'1993-10-24',1100.00,null,20),
      (8900,'jatin','clerk',8698,'1992-11-18',950.00,null,30),
      (8902,'fakir','analyst',8566,'1991-06-28',3000.00,null,20),
      (8934,'mita','clerk',8882,'1991-03-20',1300.00,null,10);
      
      
-- to get types of jobs
SELECT emp_job
FROM employee
GROUP BY emp_job;

-- to get no. of employees working in a perticular job
SELECT emp_job, COUNT(*)
FROM employee
GROUP BY emp_job;

-- to get avrage salary of each type of job
SELECT emp_job, AVG(emp_salary)
FROM employee
GROUP BY emp_job;

-- to get max. salary in each domain
SELECT emp_job, MAX(emp_salary)
FROM employee
GROUP BY emp_job;

-- we can get in ascending or descending order, for descending order, use DESC
SELECT emp_job
FROM employee
GROUP BY emp_job
ORDER BY emp_job;

SELECT emp_job, COUNT(*)
FROM employee
GROUP BY emp_job
ORDER BY emp_job;

SELECT emp_job, COUNT(*)
FROM employee
GROUP BY emp_job
ORDER BY COUNT(*);

SELECT emp_job, COUNT(*)
FROM employee
GROUP BY emp_job
ORDER BY COUNT(*) DESC;

SELECT emp_job, AVG(emp_salary)
FROM employee
GROUP BY emp_job
ORDER BY AVG(emp_salary);

SELECT emp_job, AVG(emp_salary)
FROM employee
GROUP BY emp_job
ORDER BY AVG(emp_salary) DESC;


/* with WHERE */
SELECT emp_job, COUNT(*)
FROM employee
WHERE emp_salary > 1000
GROUP BY emp_job
ORDER BY COUNT(*);

SELECT emp_name
FROM employee
WHERE emp_salary > 1500
GROUP BY emp_id;

SELECT emp_name
FROM employee
WHERE emp_salary > 1500
GROUP BY emp_id
ORDER BY emp_name;



-- max. salary in each depart_no
SELECT depart_no, MAX(emp_salary)
FROM employee
GROUP BY depart_no;

-- total salary in each depart_no
SELECT depart_no, SUM(emp_salary)
FROM employee
GROUP BY depart_no;

-- average salary in each depart_no
SELECT depart_no, AVG(emp_salary)
FROM employee
GROUP BY depart_no;

-- many things for each depart_no
SELECT 
	depart_no AS "Department",
	COUNT(*) AS "No_of_Employees",
	SUM(emp_salary) AS "Total_Earning",
	MAX(emp_salary) AS "Max. Salary",
	MIN(emp_salary) AS "Min. Salary",
	AVG(emp_salary) AS "Average Salary"
FROM employee
GROUP BY depart_no
ORDER BY depart_no;


