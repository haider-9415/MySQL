/*
	MIN() --> it returns the min. value after comparing from all rows
    
    it can compare strings and returns the result according to the dictionary order
    
    it can compare dates and returns first date entered in the list
*/

use sakila;

SELECT 
    MIN(rental_id)
FROM
    payment;

SELECT 
    MIN(DISTINCT amount)
FROM
    payment;

SELECT 
    MIN(last_update)
FROM
    payment;



use menagerie;

select min(name) from event;

select min(distinct type) from event;


