/*
	using the folowing command, we can delete records from a table
    
    TRUNCATE TABLE table_name;
    
    

*/
create database my_database;

use my_database;

create table tbl1(
	col1 int primary key,
    col2 char unique,
    col3 date
);

insert into tbl1 values(1, 'a', '2023-1-15'),
					   (2, 'b', '2023-1-16'),
                       (3, 'c', '2023-1-17'),
                       (4, 'd', '2023-1-18'),
                       (5, 'e', '2023-1-19');
                       
TRUNCATE TABLE tbl1;