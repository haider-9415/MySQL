/*
	SUM() --> it returns the summation of values in rows

*/
use sakila;

select sum(amount) from payment;

select sum(distinct amount) from payment;

select sum(all amount) from payment;

select sum(payment_date) from payment;



