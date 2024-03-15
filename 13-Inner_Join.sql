/*
	This is the most used join in SQL
    
    this is used to return only those results from the tables that match the specified conditions
    
    this is basically the superset of equi join	

	Syntax-1:
				SELECT *
                FROM table_name1 tb1, table_name2 tb2
                WHERE tb1.column_name (=,!=,<,>,<= or >=) tb2.column_name
    Syntax-2:
				SELECT *
                FROM table_name1 tb1 NATURAL JOIN table_name2 tb2
                WHERE tb1.column_name (=,!=,<,>,<= or >=) tb2.column_name
	Syntax-3:
				SELECT *
                FROM table_name1 tb1 CROSS JOIN table_name2 tb2
                WHERE tb1.column_name (=,!=,<,>,<= or >=) tb2.column_name
	Syntax-4:
				SELECT *
                FROM table_name1 tb1 JOIN table_name2 tb2
                ON/WHERE tb1.column_name (=,!=,<,>,<= or >=) tb2.column_name
	Syntax-5:
				SELECT *
                FROM table_name1 tb1 INNER JOIN table_name2 tb2
                ON/WHERE tb1.column_name (=,!=,<,>,<= or >=) tb2.column_name
	
    Note: If those same columns have same name then Syntax-2 will not be used
*/
use my_database;


-- Syntax-1
SELECT *
FROM tb1, tb3
WHERE tb1.col1 = tb3.col10;

SELECT *
FROM tb1, tb3
WHERE tb1.col1 > tb3.col10;

SELECT *
FROM tb1, tb3
WHERE tb1.col1 != tb3.col10;


-- Syntax-2
SELECT *
FROM tb1 NATURAL JOIN tb3
WHERE tb1.col1 = tb3.col10;

SELECT *
FROM tb1 NATURAL JOIN tb3
WHERE tb1.col1 > tb3.col10;

SELECT *
FROM tb1 NATURAL JOIN tb3
WHERE tb1.col1 != tb3.col10;


-- Syntax-3
SELECT *
FROM tb1 CROSS JOIN tb3
WHERE tb1.col1 = tb3.col10;

SELECT *
FROM tb1 CROSS JOIN tb3
WHERE tb1.col1 > tb3.col10;

SELECT *
FROM tb1 CROSS JOIN tb3
WHERE tb1.col1 != tb3.col10;


-- Syntax-4
SELECT *
FROM tb1 JOIN tb3
WHERE tb1.col1 = tb3.col10;

SELECT *
FROM tb1 JOIN tb3
WHERE tb1.col1 > tb3.col10;

SELECT *
FROM tb1 JOIN tb3
WHERE tb1.col1 != tb3.col10;


-- Syntax-5
SELECT *
FROM tb1 INNER JOIN tb3
WHERE tb1.col1 = tb3.col10;

SELECT *
FROM tb1 INNER JOIN tb3
WHERE tb1.col1 > tb3.col10;

SELECT *
FROM tb1 INNER JOIN tb3
WHERE tb1.col1 != tb3.col10;




