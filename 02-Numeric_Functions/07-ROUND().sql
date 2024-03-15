/*
  ROUND(x,d)
  
  it rounds the 'x' at 'd+1' digit and -30 <= d =< 30 
  the rounding algorithm depends on the data type
  
  if d<0 then it converts 'd' igits in zeros at the left side of the decimal

*/

select round(25.47483);

select round(25.57483);

select round(25.47483,3);

select round(25.47483,2);

select round(2546.47483,-3);

select round(2546.47483,-2);


