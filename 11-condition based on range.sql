/*
  to select rows based on the range, we use 'between' operator
  range specified contains lower limit and upper limit let us say 'l' and 'u' respectively
  'l' is specified first then 'u'
  both 'l' and 'u' are include inthe specified range
  syntex: select 
			  column_name,....
		  from 
              table_name
		  where
              column_name between u and l
	
    there is an operator that is reverse of between operator that is called 'not between' 
    it does not select those rows which do not satisfy the given range
    syntex: select 
			  column_name,....
		  from 
              table_name
		  where
              column_name not between u and l
	
    we can do it using arithmetic and logical operators between this way is better and shorter than it
*/

use world;

SELECT 
    Name AS 'City', CountryCode, Population
FROM
    city
WHERE
    Population BETWEEN 2000000 AND 4000000; # it will select all rows which will satisfy this condition

SELECT 
    Name AS 'Country', Continent , SurfaceArea
FROM
    country
WHERE
    SurfaceArea BETWEEN 100 AND 10000;

SELECT 
    Name AS 'Country', Continent, SurfaceArea
FROM
    country
WHERE
    SurfaceArea NOT BETWEEN 100000 AND 500000;
    

use sakila;
SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    customer_id BETWEEN 100 AND 300;

SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    amount BETWEEN 2 AND 5;    

SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    amount NOT BETWEEN 2 AND 5;    


    
# if we use string as 'l' and 'u' then it works according to dictionary order

use menagerie;
SELECT 
    name, date, type
FROM
    event
WHERE
    type BETWEEN 'b' AND 'z';

SELECT 
    name, date, type
FROM
    event
WHERE
    type BETWEEN 'ba' AND 'bz';

SELECT 
    name, date, type
FROM
    event
WHERE
    date BETWEEN '1998-08-28' AND '1999-03-21'
        && type = 'birthday';


use sakila;
SELECT 
    first_name as 'actor', actor_id
FROM
    actor
WHERE
    first_name BETWEEN 'a' AND 'h';
    
SELECT 
    first_name as 'actor', actor_id
FROM
    actor
WHERE
    first_name BETWEEN 'aa' AND 'az';

SELECT 
    customer_id,staff_id,amount,payment_date
FROM
    payment
WHERE
    payment_date BETWEEN '2005-06-15 18:02:53' AND '2005-08-02 13:44:53';


SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    payment_date BETWEEN '2005-06-15 18:02:53' AND '2005-08-02 13:44:53'
        && staff_id = 2;

SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    payment_date BETWEEN '2005-06-15 18:02:53' AND '2005-08-02 13:44:53'
        && staff_id = 2
        && amount BETWEEN 2 AND 5;

SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    payment_date NOT BETWEEN '2005-06-15 18:02:53' AND '2005-08-02 13:44:53'
        && staff_id = 2
        && amount NOT BETWEEN 2 AND 5;

SELECT 
    customer_id, staff_id, amount, payment_date
FROM
    payment
WHERE
    payment_date NOT BETWEEN '2005-06-15 18:02:53' AND '2005-08-02 13:44:53'
        && staff_id != 2
        && amount NOT BETWEEN 2 AND 5;


