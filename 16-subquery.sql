/*
  a subquery is a 'select' statement that is embedded in a clause of another SQL statement
  syntex:
         select 
              column_name,.....alter
		 from
			  table_name
		 where 
			  statement operator (select list from table_name)
              
  single row subquery uses the comparison operators like =, <>, <=, >=
  multiple row subquery uses the operators like in, any, all
  
*/

use sakila;

/* if we want those rows which have the amounts greater than that amount which is 
   of payment_id = 10 and we don't know that amount then we can do it in tow ways */ 

# 1st way, without using subquery concept
SELECT # it will give that amount which payment_id=10 have
    amount
FROM
    payment
WHERE
    payment_id = 10; 
    
SELECT # from previous statement, we have known the amount of payment_id=10 is 5.99
    *
FROM
    payment
WHERE
    amount > 5.99; 


# 2nd way, using subquery concept
SELECT 
    *
FROM
    payment
WHERE
    amount > (SELECT 
                  amount
              FROM
                  payment
              WHERE
                  payment_id = 10);


/* similarly, if we want those rows which have the amounts greater than that amounts which are
   of payment_id = 10,14,19 and we don't know that amount then */
SELECT 
    *
FROM
    payment
WHERE
    amount > ALL(SELECT 
                  amount
              FROM
                  payment
              WHERE
                  payment_id IN (10,14,19));


/* similarly, if we want those rows which have the amounts less than that amounts which are
   of payment_id = 10,14,19 and we don't know that amount then */
SELECT 
    *
FROM
    payment
WHERE
    amount < ALL(SELECT 
                  amount
              FROM
                  payment
              WHERE
                  payment_id IN (10,14,20));

                  
/* similarly, if we want those rows which have the amounts greater than any one of that amounts which are
   of payment_id = 10,14,19 and we don't know that amount then */
SELECT 
    *
FROM
    payment
WHERE
    amount > ANY(SELECT 
                  amount
              FROM
                  payment
              WHERE
                  payment_id IN (10,14,19));


/* similarly, if we want those rows which have the amounts less than any one of that amounts which are
   of payment_id = 10,14,20 and we don't know that amount then */
SELECT 
    *
FROM
    payment
WHERE
    amount < ANY(SELECT 
                  amount
              FROM
                  payment
              WHERE
                  payment_id IN (10,14,20));		
        
        
        

/* suppose we want those rows which have those types in 'event' table which are of 'Fang' */
use menagerie;    

# 1st way, without using subquery concept               
SELECT # it will give that types which are of Fang
    type
FROM
    event
WHERE
    name = "fang"; 
    
SELECT # from previous statement, we have known the types of Fang are 'birthday' and 'kennel'
    *
FROM
    event
WHERE
    type IN ('birthday','kennel'); 


# 2nd way, using subquery concept, this aubquery is multiple row subquery so we use 'in'
SELECT 
    *
FROM
    event
WHERE
    type IN (SELECT 
				 type
			 FROM
				 event
			 WHERE
				 name = "fang");