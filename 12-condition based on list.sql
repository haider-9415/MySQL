/*
  to select rows based on a list, we use 'in' operator
  in simple word, if we have to select those rows which have x, y or z values rather than 
  they have x to z values then we use it
  syntex: select
			  column_name,........
		  from 
              table_name
		  where 
			  column_name in (x,y,z,...) 
  
  there is a reverse operator of 'in' that is 'not in' operator
  in simple word, if we have to select those rows which have not x, y or z values rather than 
  they have x to z values then we use it
  syntex: select
			  column_name,........
		  from 
              table_name
		  where 
			  column_name not in (x,y,z,...) 

*/

use menagerie;

SELECT 
    owner, species, name
FROM
    pet
WHERE
    species IN ('cat');

SELECT 
    owner, species, name
FROM
    pet
WHERE
    species IN ('dog','cat');
    
SELECT 
    owner, species, name, sex
FROM
    pet
WHERE
    species IN ('dog') && sex IN ('f');

SELECT 
    owner, species, name
FROM
    pet
WHERE
    species NOT IN ('cat');

SELECT 
    owner, species, name
FROM
    pet
WHERE
    species NOT IN ('dog','cat');
    
SELECT 
    owner, species, name, sex
FROM
    pet
WHERE
    species NOT IN ('dog') && sex IN ('f');

SELECT 
    owner, species, name, sex
FROM
    pet
WHERE
    species NOT IN ('dog') || sex IN ('f');


use sakila;
SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
     customer_id IN (1 , 3);

SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
    customer_id IN (1 , 3, 9, 11);
     
SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
    customer_id IN (1 , 3, 9, 11)
        && amount BETWEEN 1 AND 4;
        
SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
    payment_date IN ('2005-08-01 11:53:17' , '2005-07-07 08:15:03',
        '2005-08-20 08:50:39',
        '2005-08-23 07:10:14')
        || customer_id IN (10 , 11, 12, 13, 14, 15);
    
SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
     customer_id NOT IN (1 , 3);

SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
    customer_id NOT IN (1 , 3, 9, 11);
     
SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
    customer_id NOT IN (1 , 3, 9, 11)
        && amount BETWEEN 1 AND 4;
        
SELECT 
    customer_id, amount, payment_date
FROM
    payment
WHERE
    payment_date NOT IN ('2005-08-01 11:53:17' , '2005-07-07 08:15:03',
        '2005-08-20 08:50:39',
        '2005-08-23 07:10:14')
        || customer_id IN (10 , 11, 12, 13, 14, 15)
