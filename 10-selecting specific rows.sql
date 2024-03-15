/*
  for selecting specific rows, we use 'where' keyowrd
  syntex:
         select 
			 * or column_name,......
		 from
             table_name
		 where
             condition
*/

use menagerie;

SELECT 
    name, date, type
FROM
    event
WHERE
    type = 'vet'; # it will give those rows in which type is vet

# similarly
SELECT 
    name, date, type
FROM
    event
WHERE
    type = 'kennel';

SELECT 
    name, date, type
FROM
    event
WHERE
    name = 'Fang';
    
SELECT 
    owner, species, sex
FROM
    pet
WHERE
    sex = 'f';
    
SELECT 
    owner, species, name
FROM
    pet
WHERE
    species = 'dog';

SELECT 
    species, name, sex
FROM
    pet
WHERE
    ((species='dog')||(species='cat')) && (sex='m');
    

use sakila;

SELECT 
    customer_id, staff_id, amount
FROM
    payment
WHERE
    amount < 10;

SELECT 
    customer_id, staff_id, amount
FROM
    payment
WHERE
    amount < 10 and amount > 3;
    
SELECT 
    customer_id, staff_id, amount
FROM
    payment
WHERE
    customer_id < 10 and staff_id = 2;

SELECT 
    customer_id, staff_id, amount
FROM
    payment
WHERE
    customer_id < 10 && staff_id = 2;
    
SELECT 
    customer_id, staff_id, amount
FROM
    payment
WHERE
    NOT (amount < 10);
    
SELECT 
    customer_id, staff_id, amount
FROM
    payment
WHERE
    !(amount < 10);
    
SELECT 
    *
FROM
    payment
WHERE
    payment_date = '2005-07-08 16:16:04'
