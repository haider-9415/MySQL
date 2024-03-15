/*
	MONTH(date)
    
    it extracts the month only from the datetime expression 
    it returns zero if the expression has month as zero

*/

use sakila;

select MONTH(payment_date) from payment;

select MONTH(last_update) from payment;

select month('2002-00-18');
select month('2002-00-00');

-- in this case, it returns 'null'
select month('0000-00-00');

