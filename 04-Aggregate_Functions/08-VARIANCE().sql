/*
	VARIANCE() --> it returns the standard variance

*/

use sakila; 

SELECT 
    VARIANCE(amount)
FROM
    payment;


SELECT 
    VARIANCE(rental_id)
FROM
    payment;


