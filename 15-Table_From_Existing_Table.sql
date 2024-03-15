/*
	 We can define a tabel and put data into it using 'SELECT' with
     'CREATE TABLE'
     
     The enw table stores the result produced by the select statement
     
     Syntax:
			CREATE TABLE new_table_name AS (
				SELECT col1, col2, .... colN
                FROM existing_table_name
                WHERE condition
            );
            
	 To see the create table statement of existing table --> SHOW CREATE TABLE table_name
     
	 To see the column details of a table --> SHOW COLUMNS FROM table_name 
*/

use menagerie;

CREATE TABLE my_table1 AS (
	SELECT * 
    FROM event
);

select * from my_table1;
select * from event;



CREATE TABLE my_table2 AS (
	SELECT * 
    FROM event
    WHERE type = 'birthday'
);

select * from my_table2;
select * from event;



CREATE TABLE my_table3 AS (
	SELECT name, owner
    FROM pet
    WHERE species = 'dog'
);

select * from my_table3;
select * from pet;



SHOW CREATE TABLE my_table2;
SHOW CREATE TABLE pet;
SHOW CREATE TABLE event;



SHOW COLUMNS FROM my_table1;
SHOW COLUMNS FROM pet;
SHOW COLUMNS FROM event;



-- on sing --> SHOW CREATE TABLE pet
CREATE TABLE pet (
  name varchar(20) DEFAULT NULL,
  owner varchar(20) DEFAULT NULL,
  species varchar(20) DEFAULT NULL,
  sex char(1) DEFAULT NULL,
  birth date DEFAULT NULL,
  death date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


