/*
	it returns all rows from the left table and records that match in 
    both table
    
    if there is no match between tables then it returns 'null'

	Syntax-1:
				SELECT *
                FROM tb1 LEFT JOIN tb2
                ON tb1.column_name = tb2.column_name
    Syntax-2:
				SELECT *
                FROM tb1 LEFT OUTER JOIN tb2
                ON tb1.column_name = tb2.column_name 	
                
	if common columns have same name then we can use the following syntax also
    Syntax-3:
				SELECT *
                FROM tb1 LEFT JOIN tb2
                USING(column_name);
    Syntax-4:
				SELECT *
                FROM tb1 LEFT OUTER JOIN tb2
                USING(column_name); 	
    
*/
use my_database;


-- Syntax-1:
SELECT *
FROM tb1 LEFT JOIN tb3
ON tb1.col1 = tb3.col10;

SELECT *
FROM tb1 LEFT JOIN tb2
ON tb1.col1 = tb2.col1;

SELECT *
FROM tb3 LEFT JOIN tb2
ON tb3.col10 = tb2.col1;

SELECT *
FROM tb4 LEFT JOIN tb5
ON tb4.post = tb5.colA;


-- Syntax-2:
SELECT *
FROM tb1 LEFT OUTER JOIN tb3
ON tb1.col1 = tb3.col10;

SELECT *
FROM tb1 LEFT OUTER JOIN tb2
ON tb1.col1 = tb2.col1;

SELECT *
FROM tb3 LEFT OUTER JOIN tb2
ON tb3.col10 = tb2.col1;

SELECT *
FROM tb4 LEFT OUTER JOIN tb5
ON tb4.post = tb5.colA;


-- Syntax-3:
SELECT *
FROM tb1 LEFT JOIN tb2
USING(col1);

SELECT *
FROM tb6 LEFT JOIN tb5
USING(colA);


-- Syntax-4:
SELECT *
FROM tb1 LEFT OUTER JOIN tb2
USING(col1);

SELECT *
FROM tb6 LEFT OUTER JOIN tb5
USING(colA);