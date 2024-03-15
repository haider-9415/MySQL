/*
	MAX() --> it returns the max. value after comparing from all rows
    
    it can compare strings and returns the result according to the dictionary order
    
    it can compare dates and returns latest date of the list
*/

use sakila;
SELECT 
    MAX(rental_id)
FROM
    payment;

SELECT 
    MAX(DISTINCT amount)
FROM
    payment;

SELECT 
    MAX(last_update)
FROM
    payment;


use menagerie;
SELECT 
    MAX(name)
FROM
    event;

SELECT 
    MAX(DISTINCT type)
FROM
    event;