/*
	MINUTE(time)
    
    it extracts the minute only from the datetime expression 
    it returns zero if the expression has minute as zero

*/

use sakila;

select MINUTE(payment_date) from payment;

select MINUTE(last_update) from payment;

select MINUTE('0000-10-18 10:00:45');
select MINUTE('0000-00-10 03:00:00');

-- in this case, it returns 0
select MINUTE('0000-00-00 00:00:00');
