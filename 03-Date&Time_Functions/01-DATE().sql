/*
	DATE(expr)
    
    it extracts the date only from the datetime expression 

*/

use sakila;

select date(payment_date) from payment;

select date(last_update) from payment;

