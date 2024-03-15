/*
  bit_length(str) --> it returns length measured in bits of the string 'str' 
*/

use menagerie;

SELECT 
    name, BIT_LENGTH(name)
FROM
    event;
 
SELECT 
    name, BIT_LENGTH(name) AS 'length in bits'
FROM
    event;
    
SELECT 
    date, BIT_LENGTH(date) AS 'length in bits'
FROM
    event;
    
SELECT 
    death, BIT_LENGTH(death) AS 'length in bits'
FROM
    pet;
    
SELECT 
    'abcdefg' AS 'string', BIT_LENGTH('abcdefg') AS 'length in bits';
    
SELECT 
    '!@#$%^&*()_+:"{}\][;/.,' AS 'string', BIT_LENGTH('!@#$%^&*()_+:"{}\][;/.,') AS 'length in bits';   
    
SELECT 
    '1272638302' AS 'string', BIT_LENGTH('1272638302') AS 'length in bits';
    
SELECT 
    'abcdefg098776544321@@@##$$%/,.' AS 'string', BIT_LENGTH('abcdefg098776544321@@@##$$%/,.') AS 'length in bits';
    
    
    
use sakila;

SELECT 
    amount, BIT_LENGTH(amount), rental_id, BIT_LENGTH(rental_id)
FROM
    payment;