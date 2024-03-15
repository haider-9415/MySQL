/*
	Primary Key Constraint:
    
    it declares a column as the primary key of the table that contain contains 
    values which uniquely identify each row in a table
    
    primary key may be a single column or a group  of column
    
    by column level constraint, we can define only one column as a primary key
    by table level constraint, we can define a group of columns as a primary key
	
    it does not accept NULL values
    
    so , we can say that --> Primary Key = Not NULL + Unique
*/

use magnet_brains;

create table if not exists table_3(
emp_code INT primary key,
emp_name VARCHAR(20),
gender CHAR(1),
salary DECIMAL,

mobile INT,
emp_email VARCHAR(30)
);

insert into table_3 values(1, 'tony stark', 'M', 50000, 111, 'tone@gmail.com');
insert into table_3 values(2, 'batman', 'M', 70000, 222, 'bat@gmail.com');
insert into table_3 values(3, 'wanda', 'F', 40000, 333, 'wanda@gmail.com');
insert into table_3 values(4, 'maria', 'F', 90000, 444, 'maria1@gmail.com');


-- the following lines will give error, because, four fields are unique
insert into table_3 values(4, 'spiderman', 'M', 80000, 555, 'spider@gmail.com');
insert into table_3 values(null, 'spiderman', 'M', 80000, 555, 'spider@gmail.com');


-- to define group of columns as primary key
create table if not exists table_4(
first_name VARCHAR(20),
last_name VARCHAR(20),
gender CHAR(1),
salary DECIMAL,
mobile INT,
emp_email VARCHAR(30),

primary key (first_name, last_name)
);

insert into table_4 values('tony', 'stark', 'M', 50000, 111, 'tone@gmail.com');
insert into table_4 values('bruce', 'wayne', 'M', 70000, 222, 'bat@gmail.com');
insert into table_4 values('thor', 'odin_son', 'M', 40000, 333, 'wanda@gmail.com');

insert into table_4 values('tony', 'ironman', 'M', 50000, 111, 'tone@gmail.com');
insert into table_4 values('bat', 'wayne', 'M', 50000, 111, 'tone@gmail.com');

-- the following will give error, because, 'first_name' & 'last_name' is a group that is primary key
insert into table_4 values('bruce', 'wayne', 'M', 60000, 999, 'bat@gmail.com');
insert into table_4 values('thor', 'odin_son', 'M', 42000, 777, 'wanda@gmail.com');

