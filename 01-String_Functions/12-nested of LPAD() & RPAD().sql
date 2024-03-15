/*
  nested of rpad() and lpad()
*/


use menagerie;

select name, rpad(lpad(name,10,'******'),15,'-') from event;

select date, rpad(lpad(date,15,'******'),20,'$') from event;

select date, rpad(lpad(date,15,'*'),20,'$$$') from event;

select date, rpad(lpad(date,5,'*****'),10,'-') from event;

select date, rpad(lpad(date,5,'*****'),2,'-') from event;

select 'haider', rpad(lpad('haider',15,'**'),16,'+');

select 'haider', rpad(lpad('haider',15,'**'),10,'+');


use sakila;

select rental_id, rpad(lpad(rental_id,10,'-'),15,'!') from payment;

select rental_id, rpad(lpad(rental_id,2,'-'),3,'*') from payment;