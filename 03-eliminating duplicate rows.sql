/* 
   for eliminating duplicate  
   we use 'distinct' keyword 
   if it is applied on one column then it eliminates the duplicate values 
   if it is applied on multiple columns then it eliminates those rows which have same values for selected columns except one of them
   
   syntex: select distinct
			   column_name,..... 
		   from 
               table_name */ # we can write it in single line
   
   
use menagerie;

SELECT 
    species
FROM
    pet; # you can see that, in the column 'species', duplecates exist

# to eliminate duplicates
SELECT DISTINCT
    species
FROM
    pet;


#similarly
SELECT 
    owner
FROM
    pet;
# to eliminate duplicates from the column 'owner'
SELECT DISTINCT
    owner
FROM
    pet;

# and
SELECT 
    death
FROM
    pet;
# to eliminate duplicates from the column 'death'
SELECT DISTINCT
    death
FROM
    pet;
    
    
    

# using multiple columns 
SELECT 
    name, type
FROM
    event; # in htis, you can see that 1st & 2nd rows have same records

SELECT DISTINCT
    name, type
FROM
    event; # in this, one of them will be eliminated

# similarly
SELECT 
    species, sex
FROM
    pet; # in htis, you can see that 4th & 5th rows have same records

SELECT DISTINCT
    species, sex
FROM
    pet; # in this, one of them will be eliminated

