/*
	It combines tables based on columns with the same name and datatype
    
    Syntax:
			SELECT *
			FROM table1 NATURAL JOIN table2;
	
    In the result, one of the same columns is dropped  
    The result contains only those rows that have same value in the same columns
    
*/

use my_database;

SELECT *
FROM tb1 NATURAL JOIN tb2;

-- we can set conditions
SELECT *
FROM tb1 NATURAL JOIN tb2
WHERE col2 = 'aa';

SELECT *
FROM tb1 NATURAL JOIN tb2
WHERE col1 < 4;

SELECT *
FROM tb1 NATURAL JOIN tb2
WHERE col20 < '2007-01-01';



/* if the same column in two different tables has same values but its name is  
   diffeent in both then it performs 'cross join'
    
   the following example will give cartesian product, col1 in tb1 & col10 in tb3 have
   some same values but their names are different
*/
SELECT *
FROM tb1 NATURAL JOIN tb3;
-- in this case, we have to set condition
SELECT *
FROM tb1 NATURAL JOIN tb3
WHERE tb1.col1 = tb3.col10;
-- it is not 'NATURAL JOIN'. In other words, we set condition on 'CROSS JOIN'
-- similarly
SELECT *
FROM tb1 NATURAL JOIN tb3
WHERE tb1.col1 > tb3.col10;



-- tables tb5 & tb6 have two same named columns, so it combines these tables on the basis of both columns col1 & colA 
SELECT *
FROM tb5 NATURAL JOIN tb6;


-- we can apply natural join on more than two tables
SELECT *
FROM tb1 NATURAL JOIN tb2 NATURAL JOIN tb5;
