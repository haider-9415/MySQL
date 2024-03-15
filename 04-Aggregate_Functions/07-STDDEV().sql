/*
	STDDEV() --> it returns standard deviation

*/

use sakila;

SELECT 
    STDDEV(amount)
FROM
    payment;

SELECT 
    STDDEV(rental_id)
FROM
    payment;
