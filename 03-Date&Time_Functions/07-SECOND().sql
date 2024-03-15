/*
	SECOND(time)
    
    it extracts the second only from the datetime expression 
    it returns zero if the expression has second as zero

*/

use sakila;

select SECOND(payment_date) from payment;

select SECOND(last_update) from payment;

select SECOND('0000-10-18 10:20:00');
select SECOND('0000-00-10 03:00:00');

-- in this case, it returns 0
select SECOND('0000-00-00 00:00:00');
