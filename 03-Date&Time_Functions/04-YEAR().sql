/*
	YEAR(date)
    
    it extracts the year only from the datetime expression 
    it returns zero if the expression has year as zero

*/

use sakila;

select YEAR(payment_date) from payment;

select YEAR(last_update) from payment;

select YEAR('0000-10-18');
select YEAR('0000-00-10');

-- in this case, it returns 'null'
select YEAR('0000-00-00');
