/*
  we can select limited rows using 'limit' keyword
  
  syntex-1: select column_name,.... from table_name limit n, where, n is always non-negative
            in this, if n = 0 then no row is selected
                     if n < no. of rows then n rows are selected
					 if n > no. fo rows then all rows are selected
                     we select rows from starting only
  
  syntex-2: select column_name,... from table_name limit offset,n
            offset --> it tells that from which row you want to select rows
            n --> it tells that how many rows you want to select
            in this, we can select rows even from middle
            remember that the first column has 0 offset, so, if you have to select from n column then 
            select offset = n-1 and both offset and n must not be non-negative
  */
  
use menagerie;
  
# using syntex-1
SELECT 
    name
FROM
    event; # it will give all rows
SELECT 
    name
FROM
    event
LIMIT 0; # it will not give any row
SELECT 
    name
FROM
    event
LIMIT 4; # it will give 4 rows 
SELECT 
    name
FROM
    event
LIMIT 2; # it will give 2 rows
SELECT 
    name
FROM
    event
LIMIT 20; # it will give all rows, because, here n < no. of rows
-- select name from event limit -2; # it will give error, because, here n is -ve

# using multiple columns
SELECT 
    name, type
FROM
    event; # it will give all rows from both columns
SELECT 
    name, date, type
FROM
    event
LIMIT 0; # it will not give any row from these three columns
SELECT 
    name, remark, type
FROM
    event
LIMIT 4; # it will give 4 rows from each column
SELECT 
    name, date, type, remark
FROM
    event
LIMIT 2; # it will give 2 rows from each column
SELECT 
    name, date, type, remark
FROM
    event
LIMIT 20; # it will give all rows from each column


# using syntex-2
SELECT 
    name
FROM
    event
LIMIT 0,3; # it will give 3 rows from 0th column, i.e., from starting

SELECT 
    name
FROM
    event
LIMIT 2,6; # it will give 6 rows from 3rd column

SELECT 
    name
FROM
    event
LIMIT 4,3; # it will give 3 rows from 5th column

-- SELECT 
--     name
-- FROM
--     event
-- LIMIT -0,3; # it will give error

-- SELECT 
--     name
-- FROM
--     event
-- LIMIT 0,-3; # it will give error

