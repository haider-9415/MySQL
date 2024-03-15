/*
  in scalar expresion, we perform arithmetic operatoins on all rows of a column 
*/

use sakila;

select amount from payment; # it will give all rows of 'amount'
select amount+2 from payment; # in this, 2 will be added to all rows
select amount-1 from payment; # in this, 1 will be subtracted from all rows
select amount*5 from payment; # in this, 5 will be added to all rows
select amount/2 from payment; # in this, all rows will be divided by 2 
select amount div 2 from payment; # in this, all rows will be divided by 2
select amount%2 from payment; # in this, reminder will be obtained after dividing each row by 2
select amount mod 2 from payment; # in this, reminder will be obtained after dividing each row by 2
