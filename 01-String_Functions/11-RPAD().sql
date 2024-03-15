/*
  rpad(str,len,padstr)
  
  it adds (n-r) padstr to the rightside of str if 'len = n' and 'length of str = r' if 'n > r'
  if 'n < r' then it removes x characters from str if 'r - n = x' 
  
*/

use menagerie;

select name, rpad(name,10,'******') from event;

select date, rpad(date,15,'******') from event;

select date, rpad(date,15,'*') from event;

select date, rpad(date,5,'*****') from event; # it will remove 5 characters, because, each record in date column has 10 characters

select 'haider', rpad('haider',15,'**');


use sakila;

select rental_id, rpad(rental_id,10,'-') from payment;

select rental_id, rpad(rental_id,2,'-') from payment;