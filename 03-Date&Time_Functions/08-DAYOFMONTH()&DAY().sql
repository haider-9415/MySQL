/*
	DAYOFMONTH() --> it rturns the date of the month
    
    DAY() --> it is its synonym
*/ 
use sakila;

SELECT 
    DAYOFMONTH(last_update)
FROM
    payment;

SELECT 
    DAY(payment_date)
FROM
    payment;

SELECT 
    DAY('2002-03-18')
FROM
    payment;
