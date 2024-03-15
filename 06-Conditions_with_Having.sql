/*
	we can place conditions on groups using HAVING clause
    
    

*/
use my_database;

-- using WHERE clause

SELECT depart_no, MAX(emp_salary)
FROM employee
WHERE emp_salary>2000
GROUP BY depart_no;

SELECT depart_no, SUM(emp_salary)
FROM employee
WHERE emp_salary>1000
GROUP BY depart_no;


-- using HAVING clause
SELECT depart_no, MAX(emp_salary)
FROM employee
GROUP BY depart_no
HAVING depart_no=20;

SELECT depart_no, MIN(emp_salary)
FROM employee
GROUP BY depart_no
HAVING depart_no=20;


-- using both
SELECT depart_no, SUM(emp_salary)
FROM employee
WHERE emp_salary>1000
GROUP BY depart_no
HAVING depart_no=20;


SELECT depart_no, SUM(emp_salary)
FROM employee
GROUP BY depart_no
HAVING SUM(emp_salary)>9000;


SELECT depart_no, AVG(emp_salary)
FROM employee
GROUP BY depart_no
HAVING COUNT(*)<4;


SELECT depart_no, emp_job, SUM(emp_salary)
FROM employee
GROUP BY depart_no, emp_job
HAVING SUM(emp_salary) BETWEEN 3000 AND 7000;


SELECT depart_no, emp_job, AVG(emp_salary)
FROM employee
GROUP BY depart_no, emp_job
HAVING emp_job IN ('clerk', 'salesman');


SELECT depart_no, emp_job, MIN(emp_salary)
FROM employee
GROUP BY depart_no, emp_job
HAVING emp_job LIKE '_______' AND MIN(emp_salary)>2500;


