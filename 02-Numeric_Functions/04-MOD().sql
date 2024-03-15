/*
  MOD(N,M)  &  N%M  &  N MOD M
  
  they returns reminder after division of N by M
  
  MOD() also works on values that have a fractional part
  
  if M = 0 then they returns null

*/

SELECT MOD(5, 3);
SELECT 5 % 3;
SELECT 5 MOD 3;

SELECT MOD(-5, 3);
SELECT -5 % 3;
SELECT -5 MOD 3;

SELECT MOD(5, -3);
SELECT 5 % -3;
SELECT 5 MOD -3;

SELECT MOD(5, 0);
SELECT 5 % 0;
SELECT 5 MOD 0;