/* selecting columns */

/* syntex: select 
				column_name,....... 
		   from 
                table_name */ # we can write it in a single line
# or tap two times on that database from which you want to retrieve data

/*SELECT 
    name
FROM
    pet; */ # it will give error because 'pet' column is in 'menagerie' database and that is not sccessed


use menagerie;
SELECT 
    name
FROM
    pet;
    
SELECT 
    owner
FROM
    pet;

SELECT 
    name, owner, species, sex
FROM
    pet;

SELECT 
    species, name, sex, owner
FROM
    pet;



# and run the following scripts after taping two times on 'sakila' database
/*
SELECT 
    first_name
FROM
    actor;

SELECT 
    last_name
FROM
    actor;

SELECT 
    first_name, last_name, actor_id
FROM
    actor;

SELECT 
    last_name, actor_id, first_name
FROM
    actor;
*/



/* using the following syntex we can select all columns of a table
   syntex: select
				*
		   from
				table_name
                          */ # we ca write it in a singl line
use menagerie;
SELECT 
    *
FROM
    event;

SELECT 
    *
FROM
    pet;


