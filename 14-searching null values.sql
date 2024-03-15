/*
  to search null values, we use 'is null' keyword
  
  syntex: select 
              column_name,......
          from 
              table_name
		  where column_name is null
  
  there is a reverse keyword of 'is null' to select non-null values in the column that is 'is not null'
*/

use menagerie;

SELECT 
    *
FROM
    pet
WHERE
    death IS NULL;

SELECT 
    *
FROM
    pet
WHERE
    death IS NULL && sex IS NULL;

SELECT 
    *
FROM
    pet
WHERE
    death IS NULL || sex IS NULL;
    
SELECT 
    *
FROM
    event
WHERE
    remark IS NULL;
    
SELECT 
    *
FROM
    pet
WHERE
    death IS NOT NULL;
    
SELECT 
    *
FROM
    event
WHERE
    remark IS NOT NULL;
    
SELECT 
    *
FROM
    event
WHERE
    name IS NULL;

SELECT 
    *
FROM
    event
WHERE
    name IS NOT NULL;


# relational oeprators can't be used with it
SELECT 
    *
FROM
    event
WHERE
    name = NULL;

SELECT 
    *
FROM
    event
WHERE
    name = 'NULL';

