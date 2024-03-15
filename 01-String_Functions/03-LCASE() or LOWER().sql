/*
  LCASE(str) OR LOWER(str) --> return the string after converting all characters in lowercase
  
  syntex: select 
               lower(column_name)
		  from
               table_name  
               
  similarly
          select 
               lcase(column_name)
		  from
               table_name
*/


use menagerie;

SELECT 
    owner, LOWER(owner)
FROM
    pet;
    
SELECT 
    owner, LOWER(owner), species, name, LOWER(name)
FROM
    pet;

SELECT 
    owner,
    LOWER(owner) AS 'lower_case',
    species,
    name,
    LOWER(name) AS 'lower_case'
FROM
    pet;
    
# similarly
SELECT 
    owner, LCASE(owner)
FROM
    pet;
   
SELECT 
    owner, LCASE(owner), species, name, LCASE(name)
FROM
    pet;

SELECT 
    owner,
    LCASE(owner) AS 'lower_case',
    species,
    name,
    LCASE(name) AS 'lower_case'
FROM
    pet;
    
    
    
use sakila;

# if we use it with those columns which contains numbers then it will not give error
SELECT 
    payment_id, LOWER(payment_id), amount, LOWER(amount)
FROM
    payment;

# similarly
SELECT 
    payment_id, LCASE(payment_id), amount, LCASE(amount)
FROM
    payment;
