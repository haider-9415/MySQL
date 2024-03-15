/* 
  if we don't use 'distinct' keyword then 'all' keyword is already there but
  we can use it explicitly
  
  syntex: select all
              column_name
		  from
              table_name */ # we can write it in a single line

use menagerie;

SELECT 
    name
FROM
    event;

SELECT ALL
    name
FROM
    event;
# you can see that both of the above statements are equal


