/*
	TIME(expr)
    
    it extracts the time only from the datetime expression and returns it as a string

*/

use sakila;

select TIME(payment_date) from payment;

select TIME(last_update) from payment;
