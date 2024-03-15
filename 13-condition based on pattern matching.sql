/*
  there us an operator 'like' that is used to match a string 
  it is used to select rows that match a character pattern 
  patterns are described using two characters
  1) % --> it matches any sub-string and represents any sequence of 0 o rmore characters
		   suppose you know that, in a name 'x', there is a character 'a' but you don't know there are how many letters
           after 'a' or/and how many letters before 'a' then
           you will use 'a%' to represent the characters after 'a' and '%a' to represent the characters before 'a'
           
  2) _ --> it matches any character and represents any single character. To represent 'n' characters, we have to use '_'  n times 
           suppose you know that, in a name 'x', there is a character 'a' and you know there are 'n' letters
           after 'a' or/and there are 'n' letters before 'a' then
           you will use 'a+(n times '_')' to represent the characters after 'a' and '(n times '_')+a' to represent the characters before 'a' 
 
  syntex: select 
               column_name,.......
          from 
               table_name
		  where
               column_name like 'patter consisting of _ and/or %'
               
  there is a reverse operator of 'like' operator that is 'not like' operator
  it is used to select those rows which don't match the givven pattern
  syntex: select 
               column_name,.......
          from 
               table_name
		  where
               column_name not like 'patter consisting of _ and/or %'
               
  if there is already an '_' or a '%' in the string then we use 'escape' keyword to avoid the special meaning
  of '_' and '%;' at this time
  syntex: select 
               column_name,.......
          from 
               table_name
		  where
               column_name like "patter consisting of _ and/or % and enter '$' before the already 
			   existing '_' or '%' " escape '$'
  similarly
  syntex: select 
               column_name,.......
          from 
               table_name
		  where
               column_name not like "patter consisting of _ and/or % and enter '$' before the already 
			   existing '_' or '%' " escape '$'
*/

use menagerie;

SELECT 
    *
FROM
    pet
WHERE
    name LIKE '%y';  # it will give all those rows which have those name record which last letter is 'y'

SELECT 
    *
FROM
    pet
WHERE
    name LIKE '_u%';  # it will give all those rows which have those name record which second letter is 'u'

SELECT 
    *
FROM
    pet
WHERE
    name NOT LIKE '%y';  # it will not give all those rows which have those name record which last letter is 'y'

SELECT 
    *
FROM
    pet
WHERE
    name NOT LIKE '_u%';  # it will not give all those rows which have those name record which second letter is 'u'



use sakila;
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '__a%'; # it will give all those rows which have those first_name record which third letter is 'a'
    
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '%a%'; # it will give all those rows which have those first_name record in which'a' exists   
    
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '%a'; # it will give all those rows which have those first_name record which last letter is 'a'   
    
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '%a_'; # it will give all those rows which have those first_name record which second last letter is 'a'   

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '_____'; # it will give all those rows which have first_name record of 5 characters, because we have used '_' 5 times

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE 'h____'; # it will give all those rows which have first_name records of 5 characters and they start form 'h'

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '__a__'; # it will give all those rows which have first_name records of 5 characters and their 3rd character is 'a'

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '____%'; # it will give all those rows which have first_name records of atleast 4 characters 

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '_e__%'; # it will give all those rows which have first_name records of atleast 4 characters and their second letter is 'e'

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name LIKE '___%e'; # it will give all those rows which have first_name records of atleast 4 characters and their last letter is 'e'
    
 SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '__a%'; # it will not give all those rows which have those first_name record which third letter is 'a'
    
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '%a%'; # it will not give all those rows which have those first_name record in which'a' exists   
    
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '%a'; # it will not give all those rows which have those first_name record which last letter is 'a'   
    
SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '%a_'; # it will not give all those rows which have those first_name record which second last letter is 'a'   

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '_____'; # it will not give all those rows which have first_name record of 5 characters, because we have used '_' 5 times

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE 'h____'; # it will not give all those rows which have first_name records of 5 characters and they start form 'h'

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '__a__'; # it will not give all those rows which have first_name records of 5 characters and their 3rd character is 'a'

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '____%'; # it will not give all those rows which have first_name records of atleast 4 characters 

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '_e__%'; # it will not give all those rows which have first_name records of atleast 4 characters and their second letter is 'e'

SELECT 
    first_name AS Actor
FROM
    actor
WHERE
    first_name NOT LIKE '___%e'; # it will not give all those rows which have first_name records of atleast 4 characters and their last letter is 'e'
 
 
 
use sys;
    
SELECT 
    *
FROM
    sys_config
WHERE
    variable LIKE '%_i%'; # it will not work perfectively, because, '_i' is already existing in this column 
    
SELECT 
    *
FROM
    sys_config
WHERE
    variable LIKE '%$_i%' ESCAPE '$'; # it will work perfectively  

# similarly
SELECT 
    *
FROM
    sys_config
WHERE
    variable LIKE '__$_t%' ESCAPE '$'; # it will give that in which '_' already exists as 3rd character 
    
SELECT 
    *
FROM
    sys_config
WHERE
    variable NOT LIKE '%_i%'; # it will not work perfectively, because, '_i' is already existing in this column 
    
SELECT 
    *
FROM
    sys_config
WHERE
    variable NOT LIKE '%$_i%' ESCAPE '$'; # it will work perfectively  

# similarly
SELECT 
    *
FROM
    sys_config
WHERE
    variable NOT LIKE '__$_t%' ESCAPE '$'; # it will not give that in which '_' already exists as 3rd character 
    
    
    
    
    