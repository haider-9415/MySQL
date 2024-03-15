/*
  TRUNCATE(x,d)
  
  it returns 'x' upto 'd' decimal places
  
  if d=0 then the result ha no decimal point or fractional part
  id d<0 then 'd' digits left of the decimal point of 'x' will become zero
  
*/

-- for d>0 
select truncate(1234.56789,1);
select truncate(1234.56789,2);
select truncate(1234.56789,3);
select truncate(1234.56789,4);
select truncate(1234.56789,5);
select truncate(1234.56789,6);

-- for d=0
select truncate(1234.56789,0);

-- for d<0
select truncate(1234.56789,-1);
select truncate(1234.56789,-2);
select truncate(1234.56789,-3);
select truncate(1234.56789,-4);
select truncate(1234.56789,-5);
select truncate(1234.56789,-6);



