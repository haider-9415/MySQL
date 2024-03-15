/*
	HOUR(time)
    
    it extracts the hour only from the datetime expression 
    it returns zero if the expression has hour as zero

*/

use sakila;

select HOUR(payment_date) from payment;

select HOUR(last_update) from payment;

select HOUR('0000-10-18 00:10:45');
select HOUR('0000-00-10 00:10:00');

-- in this case, it returns 0
select HOUR('0000-00-00 00:00:00');


