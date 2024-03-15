/*
	It is similar to 'Natural Join'
    
    In this, we have to equate those same columns in WHERE clause to
    combine tables
    
    Remember:
			1)In NATURAL JOIN, name of those same columns must be same
			2)In EQUI JOIN, it is not necessary that name of those same columns 
              must be same
			3)The result has repeated columns
            4)It is performed on more than two tables

    
    Syntax-1:
				SELECT *
                FROM table_name1 tb1, table_name2 tb2
                WHERE tb1.column_name = tb2.column_name
    Syntax-2:
				SELECT *
                FROM table_name1 tb1 NATURAL JOIN table_name2 tb2
                WHERE tb1.column_name = tb2.column_name
	Syntax-3:
				SELECT *
                FROM table_name1 tb1 CROSS JOIN table_name2 tb2
                WHERE tb1.column_name = tb2.column_name
	Syntax-4:
				SELECT *
                FROM table_name1 tb1 JOIN table_name2 tb2
                ON/WHERE tb1.column_name = tb2.column_name
	Syntax-5:
				SELECT *
                FROM table_name1 tb1 INNER JOIN table_name2 tb2
                ON/WHERE tb1.column_name = tb2.column_name
	
    Note: If those same columns have same name then Syntax-2 will not be used
		  in this case, we can use the following syntax
          Syntax-1:
				SELECT *
                FROM table_name1 CROSS JOIN table_name2
                USING (common_column_name) 
		  Syntax-2:
				SELECT *
                FROM table_name1 JOIN table_name2
                USING (common_column_name)
		  Syntax-3:
				SELECT *
                FROM table_name1 INNER JOIN table_name2
                USING (common_column_name)
		  Syntax-4:
				SELECT *
                FROM table_name1 FULL JOIN table_name2
                USING (common_column_name)
          
*/

use my_database;


-- Syntax-1
SELECT *
FROM tb1, tb3
WHERE tb1.col1 = tb3.col10;

-- Syntax-2
SELECT *
FROM tb1 NATURAL JOIN tb3
WHERE tb1.col1 = tb3.col10;

-- Syntax-3
SELECT *
FROM tb1 CROSS JOIN tb3
WHERE tb1.col1 = tb3.col10;

-- using WHERE
-- Syntax-4
SELECT *
FROM tb1 JOIN tb3
WHERE tb1.col1 = tb3.col10;

-- Syntax-5
SELECT *
FROM tb1 INNER JOIN tb3
WHERE tb1.col1 = tb3.col10;

-- using ON
-- Syntax-4
SELECT *
FROM tb1 JOIN tb3
ON tb1.col1 = tb3.col10;

-- Syntax-5
SELECT *
FROM tb1 INNER JOIN tb3
ON tb1.col1 = tb3.col10;



/* Tables tb1 & tb2 have same columns with same name, so, we can't use Syntax-2 */

-- Syntax-1
SELECT *
FROM tb1, tb2
WHERE tb1.col1 = tb2.col1;

-- Syntax-3
SELECT *
FROM tb1 CROSS JOIN tb2
WHERE tb1.col1 = tb2.col1;

-- using WHERE
-- Syntax-4
SELECT *
FROM tb1 JOIN tb2
WHERE tb1.col1 = tb2.col1;

-- Syntax-5
SELECT *
FROM tb1 INNER JOIN tb2
WHERE tb1.col1 = tb2.col1;

-- using ON
-- Syntax-4
SELECT *
FROM tb1 JOIN tb2
ON tb1.col1 = tb2.col1;

-- Syntax-5
SELECT *
FROM tb1 INNER JOIN tb2
ON tb1.col1 = tb2.col1;



/* other four syntax, on using these, duplicate column is removed */

-- Syntax-1:
SELECT *
FROM tb1 CROSS JOIN tb2
USING (col1);

-- Syntax-2:
SELECT *
FROM tb1 JOIN tb2
USING (col1);

-- Syntax-3:
SELECT *
FROM tb1 INNER JOIN tb2
USING (col1);

-- Syntax-4:
SELECT *
FROM tb1 FULL JOIN tb2
USING (col1);



/* if there are more than one columns are same then it makes that column the base
   you will mentioned
*/

-- in this, col1 & colA are the base to join the tables
SELECT *
FROM tb5 NATURAL JOIN tb6;

-- in this, only col1 is the base to join the tables
SELECT *
FROM tb5 FULL JOIN tb6
USING (col1);
