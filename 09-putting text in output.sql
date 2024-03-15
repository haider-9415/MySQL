/* 
  we can add text in the output
  
  syntex: to add it before a column
		  select text-to-be-added, column_name from table_name
 
  syntex: to add it after a column
		  select column_name, text-to-be-added from table_name
*/

use menagerie;

SELECT 
    owner, species, name
FROM
    pet;

SELECT 
    owner, ' owns a ', species, ' whose name is', name
FROM
    pet;

SELECT 
    owner,
    ' owns a ' AS '',
    species,
    ' whose name is ' AS '',
    name
FROM
    pet;
    


    
use sakila;

SELECT 
    amount, payment_date
FROM
    payment;

SELECT 
    ' i paied (in INR) ', amount, ' at ', payment_date
FROM
    payment;

SELECT 
    ' i paied (in INR) ' AS '',
    amount,
    ' at ' AS '',
    payment_date
FROM
    payment;


