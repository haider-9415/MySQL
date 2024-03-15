/*
  for handling null values, we use ifnull() 
  syntex:
         select column_name,...., ifnull(column_name, value-to-be-substituted) from table_name
*/

use menagerie;

SELECT 
    name, birth, death
FROM
    pet;
    
SELECT 
    name, birth, IFNULL(death, 'alive')
FROM
    pet;
    
SELECT 
    name, birth, IFNULL(death, 'alive') as 'died on'
FROM
    pet;
    
    
    
SELECT 
    name,species,sex
FROM
    pet;

SELECT 
    name,species, IFNULL(sex, 'f')
FROM
    pet;

SELECT 
    name,species, IFNULL(sex, 'f') as 'gender'
FROM
    pet;
    
    
    
SELECT 
    name,date,type,remark
FROM
    event;

SELECT 
    name, date, type, IFNULL(remark, 'no remark')
FROM
    event;

SELECT 
    name, date, type, IFNULL(remark, 'no remark') as 'remark'
FROM
    event;