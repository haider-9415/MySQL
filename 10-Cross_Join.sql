/*
	It is alsoo called 'Cartesian Product', 'Cross Product', 'Outer Join', 'Full Join', 
    'Full Outer Join' or 'Cartesian Join'
    
    It is used to combine all possibilities of two or more tables and returns thhe result that
    contains every row from all contributing tables
    
    Syntax-1:
				SELECT *
                FROM table1, table2;
	Syntax-2:
				SELECT *
                FROM table1 CROSS JOIN table2;
	Syntax-3:
				SELECT *
                FROM table1 FULL JOIN table2;
	Syntax-4:
				SELECT *
                FROM table1 JOIN table2;
	Syntax-5:
				SELECT *
                FROM table1 INNER JOIN table2;

*/
use my_database;

SELECT *
FROM tb1, tb2;
-- result of joining tb1 & tb2 has 100 rows, e.i., (10 rows of tb1) x (10 rows of tb2)
SELECT COUNT(*)
FROM tb1, tb2;

SELECT *
FROM tb1, tb4;
-- result of joining tb1 & tb4 has 90 rows, e.i., (10 rows of tb1) x (9 rows of tb4)
SELECT COUNT(*)
FROM tb1, tb4;

SELECT *
FROM tb3 CROSS JOIN tb2;
-- result of joining tb3 & tb2 has 100 rows, e.i., (10 rows of tb3) x (10 rows of tb2)
SELECT COUNT(*)
FROM tb3 CROSS JOIN tb2;

SELECT *
FROM tb3 FULL JOIN tb2;
-- result of joining tb3 & tb2 has 100 rows, e.i., (10 rows of tb3) x (10 rows of tb2)
SELECT COUNT(*)
FROM tb3 FULL JOIN tb2;

SELECT *
FROM tb3 JOIN tb2;
-- result of joining tb3 & tb2 has 100 rows, e.i., (10 rows of tb3) x (10 rows of tb2)
SELECT COUNT(*)
FROM tb3 JOIN tb2;

SELECT *
FROM tb3 INNER JOIN tb2;
-- result of joining tb3 & tb2 has 100 rows, e.i., (10 rows of tb3) x (10 rows of tb2)
SELECT COUNT(*)
FROM tb3 INNER JOIN tb2;

SELECT col2, col20
FROM tb1, tb2;

-- is both tables have same column then it will give error
SELECT col1, col20
FROM tb1, tb2;
-- to resolve the error

-- we can use table_name 
SELECT tb1.col1, col20
FROM tb1, tb2;
-- or
SELECT tb2.col1, col20
FROM tb1, tb2;
-- similarly
SELECT tb1.col1, tb2.col1
FROM tb1, tb2;

-- or we can use alias
SELECT a.col1, col20
FROM tb1 a, tb2 b;
-- similarly
SELECT a.col1, b.col1, col20
FROM tb1 a, tb2 b;

-- we can set conditions
SELECT a.col1, col2, col20
FROM tb1 a, tb2 b
WHERE a.col1=5;

SELECT col2, col20, a.col1, b.col1
FROM tb1 a, tb2 b
WHERE col2 = 'ff';




