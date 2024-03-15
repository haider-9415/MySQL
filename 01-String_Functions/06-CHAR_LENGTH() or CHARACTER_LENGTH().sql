/*
  char_length(str) or character_length(str) 

  both return length measured in no. of chaarcters of the string 'str' 
*/


use menagerie;

SELECT 
    name, CHAR_LENGTH(name)
FROM
    event;
 
SELECT 
    name, CHAR_LENGTH(name) AS 'length in caracters'
FROM
    event;
    
SELECT 
    date, CHAR_LENGTH(date) AS 'length in caracters'
FROM
    event;
    
SELECT 
    death, CHAR_LENGTH(death) AS 'length in caracters'
FROM
    pet;
    
SELECT 
    'abcdefg' AS 'string', CHAR_LENGTH('abcdefg') AS 'length in caracters';
    
SELECT 
    '!@#$%^&*()_+:"{}\][;/.,' AS 'string', CHAR_LENGTH('!@#$%^&*()_+:"{}\][;/.,') AS 'length in caracters';   
    
SELECT 
    '1272638302' AS 'string', CHAR_LENGTH('1272638302') AS 'length in caracters';
    
SELECT 
    'abcdefg098776544321@@@##$$%/,.' AS 'string', CHAR_LENGTH('abcdefg098776544321@@@##$$%/,.') AS 'length in caracters';
    
    
    
use sakila;

SELECT 
    amount, CHAR_LENGTH(amount), rental_id, CHAR_LENGTH(rental_id)
FROM
    payment;