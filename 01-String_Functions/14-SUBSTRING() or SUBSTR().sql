/*
  SUBSTRING(str/column_name, n) or SUBSTRING(str/column_anme from n) --> it returns the whole string starting from 'n'
  
  SUBSTRING(str/column_name, n, m) or SUBSTRING(str/column_name from n for m) --> it returns the string starting from 'n' to 'm'
  
  if 'n' is 0 then it returns an empty string
  'n' can be a -ve no. 
  if 'm' is -ve then it returns empty string 
  
  
  the following are the synonyms of the above
  SUBSTR(str/column_name, n), SUBSTR(str/column_name from n), SUBSTR(str/column_name, n, m) or SUBSTR(str/column_name from n for m)
*/

select substring('haider',0);
select substring('haider',1);
select substring('haider',2);
select substring('haider',4);
select substring('haider',6);
select substring('haider',-1);
select substring('haider',-2);
select substring('haider',-4);
select substring('haider',-6);
select substring('haider',3.5);
select substring('haider',3.4);

select substring('haider',0,6);
select substring('haider',1,3);
select substring('haider',2,6);
select substring('haider',4,5);
select substring('haider',6,10);
select substring('haider',3.5,6);
select substring('haider',3.4,6);

select substring('haider' from 0);
select substring('haider' from 1);
select substring('haider' from 2);
select substring('haider' from 4);
select substring('haider' from 6);
select substring('haider' from 3.5);
select substring('haider' from 3.4);
select substring('haider' from -1);
select substring('haider' from -2);
select substring('haider' from -4);
select substring('haider' from -6);

select substring('haider' from 0 for 6);
select substring('haider' from 1 for 3);
select substring('haider' from 2 for 6);
select substring('haider' from 4 for 5);
select substring('haider' from 6 for 10);
select substring('haider' from 3.5 for 6);
select substring('haider' from 3.4 for 6);

# the following will give empty, because n is greater than length of str
select substring('haider',7);
select substring('haider',10);
select substring('haider',-7);
select substring('haider',-10);
select substring('haider' from 7);
select substring('haider' from 10);
select substring('haider' from -7);
select substring('haider' from -10);





select substr('haider',0);
select substr('haider',1);
select substr('haider',2);
select substr('haider',4);
select substr('haider',6);
select substr('haider',-1);
select substr('haider',-2);
select substr('haider',-4);
select substr('haider',-6);
select substr('haider',3.5);
select substr('haider',3.4);

select substr('haider',0,6);
select substr('haider',1,3);
select substr('haider',2,6);
select substr('haider',4,5);
select substr('haider',6,10);
select substr('haider',3.5,6);
select substr('haider',3.4,6);

select substr('haider' from 0);
select substr('haider' from 1);
select substr('haider' from 2);
select substr('haider' from 4);
select substr('haider' from 6);
select substr('haider' from 3.5);
select substr('haider' from 3.4);
select substr('haider' from -1);
select substr('haider' from -2);
select substr('haider' from -4);
select substr('haider' from -6);

select substr('haider' from 0 for 6);
select substr('haider' from 1 for 3);
select substr('haider' from 2 for 6);
select substr('haider' from 4 for 5);
select substr('haider' from 6 for 10);
select substr('haider' from 3.5 for 6);
select substr('haider' from 3.4 for 6);

# the following will give empty, because n is greater than length of str
select substr('haider',7);
select substr('haider',10);
select substr('haider',-7);
select substr('haider',-10);
select substr('haider' from 7);
select substr('haider' from 10);
select substr('haider' from -7);
select substr('haider' from -10);








