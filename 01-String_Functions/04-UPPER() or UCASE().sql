/*
  UCASE(str) OR UPPER(str) --> return the string after converting all characters in uppercase
  
  syntex: select 
               upper(column_name)
		  from
               table_name
  similarly
          select 
               ucase(column_name)
		  from
               table_name

*/

use menagerie;

SELECT 
    owner, UPPER(owner)
FROM
    pet;
    
SELECT 
    owner, UPPER(owner), species, name, UPPER(name)
FROM
    pet;

SELECT 
    owner,
    UPPER(owner) AS 'OWNER',
    species,
    name,
    UPPER(name) AS 'NAME'
FROM
    pet;
    
# similarly
SELECT 
    owner, UCASE(owner)
FROM
    pet;
   
SELECT 
    owner, UCASE(owner), species, name, UCASE(name)
FROM
    pet;

SELECT 
    owner,
    UCASE(owner) AS 'OWNER',
    species,
    name,
    UCASE(name) AS 'NAME'
FROM
    pet;
    
    
    
use sakila;

# if we use it with those columns which contains numbers then it will not give error
SELECT 
    payment_id, UPPER(payment_id), amount, UPPER(amount)
FROM
    payment;

# similarly
SELECT 
    payment_id, UCASE(payment_id), amount, UCASE(amount)
FROM
    payment;
