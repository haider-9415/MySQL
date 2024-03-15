/*
	AVG() --> it returns the average value

*/

use sakila;

select avg(amount) from payment;

select avg(distinct amount) from payment;

select avg(all amount) from payment;

