/*
	this is used to join a table with itself
    
    if we use same table name more than one time in a single query without
    table aliases then it gives error therefore we use different table aliases
    for same table
    
    Syntax-1:
				SELECT *
                FROM tb1 a, tb1 b
                WHERE a.column_name = b.column_name
    Syntax-2:
				SELECT *
                FROM tb1 a INNER JOIN tb1 b
                ON/WHERE a.column_name = b.column_name
	Syntax-3:
				SELECT *
                FROM tb1 a JOIN tb1 b
                ON/WHERE a.column_name = b.column_name
	Syntax-4:
				SELECT *
                FROM tb1 a CROSS JOIN tb1 b
                WHERE a.column_name = b.column_name
	Syntax-5:
				SELECT *
                FROM tb1 a INNER JOIN tb1 b
                USING(column_name)


*/
use my_database;

SELECT *
FROM tb1 a INNER JOIN tb1 b;


-- Syntax-1
SELECT *
FROM tb1 a, tb1 b
WHERE a.col1 = b.col1;

SELECT *
FROM tb1 a, tb1 b
WHERE a.col1 > b.col1;

SELECT *
FROM tb1 a, tb1 b
WHERE a.col1 < b.col1;


-- Syntax-2
SELECT *
FROM tb1 a INNER JOIN tb1 b
WHERE a.col1 = b.col1;

SELECT *
FROM tb1 a INNER JOIN tb1 b
WHERE a.col1 > b.col1;

SELECT *
FROM tb1 a INNER JOIN tb1 b
WHERE a.col1 < b.col1;


-- Syntax-3
SELECT *
FROM tb1 a JOIN tb1 b
WHERE a.col1 = b.col1;

SELECT *
FROM tb1 a JOIN tb1 b
WHERE a.col1 > b.col1;

SELECT *
FROM tb1 a JOIN tb1 b
WHERE a.col1 < b.col1;


-- Syntax-4
SELECT *
FROM tb1 a CROSS JOIN tb1 b
WHERE a.col1 = b.col1;

SELECT *
FROM tb1 a CROSS JOIN tb1 b
WHERE a.col1 > b.col1;

SELECT *
FROM tb1 a CROSS JOIN tb1 b
WHERE a.col1 < b.col1;


-- Syntax-5
-- in this, duplicate column will be removed
SELECT *
FROM tb1 a CROSS JOIN tb1 b
USING(col1);

SELECT *
FROM tb1 a CROSS JOIN tb1 b
USING(col1);

SELECT *
FROM tb1 a CROSS JOIN tb1 b
USING(col1);