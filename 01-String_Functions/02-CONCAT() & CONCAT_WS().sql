/*
  CONCAT(str1,str2,str3,........,str'n') --> it concatenates the given string
  
  if anyone argument is binary string then the result is a binary string
  if any argument is numeric then it is converted into its equivalent nonbinary string
  if anyone argument is null then the result is null
  syntex: 
         select 
			concat_ws(col_1,col_2,str1,col3,str2,str3,......)
         from 
            table_name
  
  
  CONCAT_WS(separator, str1,str2,str3,.......,str'n')
  
  it also concatenates the given string but separates them by the given separator
  it does not skip any empty string but skip null values
  syntex: 
         select 
			concat_ws(col_1,col_2,str1,col3,str2,str3,......)
         from 
            table_name
*/

use menagerie;

SELECT 
    CONCAT(name, ' --> ', species, ': ', sex)
FROM
    pet;

SELECT 
    CONCAT(name, ' --> ', species, ': ', sex) as 'name, species & gender'
FROM
    pet;
    

SELECT 
    name,owner,CONCAT(name, ' --> ', species, ': ', sex) as 'name, species & gender'
FROM
    pet;
    
SELECT 
    CONCAT(name, ' --> ', species, ' --> ', sex) as 'name, species & gender',name,owner
FROM
    pet;

SELECT 
    CONCAT_WS(" --> ",name, species, sex) as 'name, species & gender'
FROM
    pet;
    
SELECT 
    CONCAT(name, ' --> ',null, species, ': ', sex)
FROM
    pet;
 
SELECT 
    CONCAT(name, ' --> ', species, ' --> ', sex,null) as 'name, species & gender',name,owner
FROM
    pet;

SELECT 
    CONCAT("",name, ' --> ',"", species, ': ', sex)
FROM
    pet;
 
SELECT 
    CONCAT(name, ' --> ', species, ' --> ', sex,"") as 'name, species & gender',name,owner
FROM
    pet;





use sakila;

SELECT 
    amount,CONCAT_WS(" -- ",payment_id, amount, payment_date),staff_id
FROM
    payment;

SELECT 
    amount,CONCAT_WS(" -- ",payment_id, amount, payment_date) as 'payment_id, amount, payment_date', staff_id
FROM
    payment;

SELECT 
    amount,CONCAT_WS(" -- ",payment_id, amount,"**", payment_date) as 'payment_id, amount, payment_date', staff_id
FROM
    payment;    

SELECT 
    amount,CONCAT_WS(" -- ",payment_id, amount, payment_date,null),staff_id
FROM
    payment;

SELECT 
    amount,CONCAT_WS(" -- ",payment_id,null, amount, payment_date) as 'payment_id, amount, payment_date', staff_id
FROM
    payment;
    

SELECT 
    amount,CONCAT_WS(" -- ",payment_id, amount, payment_date,""),staff_id
FROM
    payment;

SELECT 
    amount,CONCAT_WS(" -- ",payment_id,"", amount, payment_date) as 'payment_id, amount, payment_date', staff_id
FROM
    payment;