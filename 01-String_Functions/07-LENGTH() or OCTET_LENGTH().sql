/*
  length(str) or octet_length(str)
  
  both return length measured in bytes of the string 'str' 
*/


use menagerie;

SELECT 
    name, LENGTH(name)
FROM
    event;
 
SELECT 
    name, LENGTH(name) AS 'length in bytes'
FROM
    event;
    
SELECT 
    date, LENGTH(date) AS 'length in bytes'
FROM
    event;
    
SELECT 
    death, LENGTH(death) AS 'length in bytes'
FROM
    pet;
    
SELECT 
    'abcdefg' AS 'string', LENGTH('abcdefg') AS 'length in bytes';
    
SELECT 
    '!@#$%^&*()_+:"{}\][;/.,' AS 'string', LENGTH('!@#$%^&*()_+:"{}\][;/.,') AS 'length in bytes';   
    
SELECT 
    '1272638302' AS 'string', LENGTH('1272638302') AS 'length in bytes';
    
SELECT 
    'abcdefg098776544321@@@##$$%/,.' AS 'string', LENGTH('abcdefg098776544321@@@##$$%/,.') AS 'length in bytes';
    
    
    
use sakila;

SELECT 
    amount, LENGTH(amount), rental_id, LENGTH(rental_id)
FROM
    payment;