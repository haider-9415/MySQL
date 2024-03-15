/*
  REPLACE(str/column_name, from_it, to_it)
  
  it reurns the str/column_name with all occurrences of from_it replaced by to_it
  it is a case-sensitive
*/

select replace('hanzala', 'a', '$');
select replace('hanzala', 'an', '$');
select replace('hanzala', 'na', '$'); # it will not work
select replace('hanzala', 'hanzala', '$');
select replace('hanzala', 'la', '$');
select replace('123abc456abc789abc', 'abc', '$');
select replace('123abc456abc789abc', 'abc', '$%^&*(');
select replace('123abc456abc789abc', 'bc', '$@!#$~');
select replace('123abc456abc789abc', 'abc', '  ');
select replace('123abc123abc123abc', '12', '  ');
select replace('123abc123abc123abc', '123', '__');


use menagerie;
select date, replace(date,9,'a') from event;
select date, replace(date,'-','/') from event;

# null value is not changed
select death, replace(death,null,'a') from pet;

