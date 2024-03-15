/*
  INSTR(str, substr) --> it is used to check that the substr is in the str or not 
  
  if there are mmultiple substr then it will return index of first one
  if the substr is of more than one character then it will return the index of first 
  character of substr
  
  it returns 0 if substr is not in str
*/

select instr('hanzala', 'a');
select instr('hanzala', 'an');
select instr('hanzala', 'ala');
select instr('hanzala', 'nzal');

select instr('hanzala', 'b');

use sakila;
select instr(amount,'.') from payment;

select instr(payment_date,'-05') from payment