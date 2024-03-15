/*
  ELT(N,str1, str2, str3,......)
  
  it returns the nth string, i.e., it will return str1 if N=1 and str2 if N=2 and so on
  it returns NULL if N is less than 1 or greater than the no. of arguments
*/

select elt(0,'haider','harry','delhi','lucknow');
select elt(1,'haider','harry','delhi','lucknow');
select elt(2,'haider','harry','delhi','lucknow');
select elt(3,'haider','harry','delhi','lucknow');
select elt(6,'haider','harry','delhi','lucknow');

use menagerie;
select elt(1,name,type,remark) from event;
select elt(2,name,type,remark) from event;
select elt(3,name,type,remark) from event;


use sakila;
select elt(staff_id, amount, payment_date)
from payment;