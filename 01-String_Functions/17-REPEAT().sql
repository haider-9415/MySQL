/*
  REPEAT(element/column_name, n)
  
  it returns str 'n' times 
  if 'n' is less than 1 then it returns empty string
  if n or str is null then it returns null
*/

select repeat('haider', 10);
select repeat('haider  ', 10);
select repeat(100 , 10);
select repeat('12-3-9000', 10);

# the following will give null
select repeat(null, 10);
select repeat('haider  ', null);

# the following will give empty string
select repeat('haider  ', 0);
select repeat('haider  ',-5);

# if 'n = x.y' then if 'y' is less than 5 then 'n = x' , if 'y' is greater than 4 then 'n = x+1'
select repeat('haider  ', 3.4);
select repeat('haider  ', 3.5);
select repeat('haider  ', 3.2);
select repeat('haider  ', 3.8);

use menagerie;
select name, repeat(name,3) from event;
select name, repeat(name,0) from event;
select name, repeat(name,null) from event;
select name, repeat(name,3.6) from event;
select name, repeat(name,3.3) from event;
select name, repeat(name,-3) from event

