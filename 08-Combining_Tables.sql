/*
	we can join the results of two or more SELECT statements
    using "UNION" & "UNION ALL" these are called "set operators"

*/
use my_database;

create table TABLE_A(
	fname varchar(20),
    lname varchar(20),
    dob date
);
insert into TABLE_A values('Sachin', 'Meena', '2000-02-23'),
						  ('Ankit', 'Sharma', '1999-12-18'),
                          ('Sakshi', 'Parihar', '2002-10-20'),
                          ('Muskan', 'Yadav', '1998-10-28');

create table TABLE_B(
	fname varchar(20),
    lname varchar(20),
    dob date
);
insert into TABLE_B values('Ankit', 'Sharma', '1999-12-18'),
                          ('Munisha', 'Gupta', '2002-05-25'),
                          ('Muskan', 'Yadav', '1998-10-28');
                          
/*
	UNION operator removes duplicate rows by default
    
    rules you must follow:
						1) no. of columns must be same in 
						   all SELECT statements
						2) name of columns may be different 
*/ 
-- now we will combine result of two SELECT statement
SELECT * FROM TABLE_A
UNION
SELECT * FROM TABLE_B;
-- you can see that the duplicate rows have been removed


-- Similarly
SELECT * FROM TABLE_B
UNION
SELECT * FROM TABLE_A;


SELECT fname, dob FROM TABLE_B
UNION
SELECT fname, dob FROM TABLE_A;


create table TABLE_C(
	col1 varchar(20),
    col2 varchar(20),
    col3 date
);
insert into TABLE_c values('Ankit', 'Sharma', '1999-12-18'),
                          ('Tony', 'Stark', '2002-05-25'),
                          ('Steve', 'Rogerse', '1998-10-28'),
                          ('Muskan', 'Yadav', '1998-10-28');
--  the name of columns can be different
SELECT fname, dob FROM TABLE_B
UNION
SELECT col1, col3 FROM TABLE_C;

SELECT * FROM TABLE_C
UNION
SELECT * FROM TABLE_A;

SELECT col3, col1 FROM TABLE_C
UNION
SELECT fname, dob FROM TABLE_B;


-- combine more than three tables
SELECT * FROM TABLE_C
UNION
SELECT * FROM TABLE_A
UNION
SELECT * FROM TABLE_B;




/*
	UNION ALL operator does not remove duplicate rows by default
*/
SELECT * FROM TABLE_C
UNION ALL
SELECT * FROM TABLE_A
UNION ALL
SELECT * FROM TABLE_B;

