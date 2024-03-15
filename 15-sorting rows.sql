/*
  we can sort the columns using 'order by' clause
  
  syntex: select 
               column_name,.......
		  from 
               table_name
		  where --> optional
               condition
		  order by column_name1 (asc/desc), column_name2 (asc,desc),...... 
  asc --> for ascending, it is bydefault
  desc --> from descending
  when we use multiple columns in 'order by' clause then it will sort 1st column and then sort those rows
  of second column which have same values for 1st column
  
*/

use menagerie;

SELECT 
    *
FROM
    event
ORDER BY name;

SELECT 
    *
FROM
    event
ORDER BY name ASC;

SELECT 
    *
FROM
    event
ORDER BY name DESC;

SELECT 
    *
FROM
    event
ORDER BY name,type ASC;

SELECT 
    *
FROM
    event
ORDER BY type,name ASC;

SELECT 
    *
FROM
    event
ORDER BY type ASC,name ASC;

SELECT 
    *
FROM
    event
ORDER BY type ASC,name DESC;

SELECT 
    *
FROM
    event
ORDER BY type DESC,name ASC;


use sakila;
SELECT 
    *
FROM
    actor
ORDER BY first_name ASC;

SELECT 
    *
FROM
    actor
ORDER BY first_name DESC;

SELECT 
    *
FROM
    payment
WHERE
    amount BETWEEN 1 AND 8
ORDER BY amount ASC;

SELECT 
    *
FROM
    payment
WHERE
    amount BETWEEN 1 AND 8
ORDER BY amount DESC;

SELECT 
    *
FROM
    payment
WHERE
    amount BETWEEN 1 AND 4
ORDER BY rental_id ASC;

SELECT 
    *
FROM
    payment
WHERE
    rental_id BETWEEN 100 AND 10000
ORDER BY rental_id ASC;

SELECT 
    *
FROM
    payment
WHERE
    rental_id BETWEEN 100 AND 10000
ORDER BY rental_id DESC;

SELECT 
    *
FROM
    payment
ORDER BY staff_id DESC, amount DESC;

SELECT 
    *
FROM
    payment
ORDER BY staff_id ASC, amount ASC;

SELECT 
    *
FROM
    payment
ORDER BY staff_id DESC, amount ASC;

SELECT 
    *
FROM
    payment
ORDER BY staff_id ASC, amount DESC;
