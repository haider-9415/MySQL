/* Accessing database */

# syntex: use database_name or tap two times on the database if you are in sql-workbansh

-- select * from event #it will give error because it is in 'menagerie' and that is not accessed


use menagerie; 
select * from event;
select * from pet;


# and run the following scripts after taping two times on 'sakila'

-- select * from actor;
-- select * from film;
