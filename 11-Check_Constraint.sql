/*
	Check Constraint:
    
    it limits values that can be inserted into a column of a table
    
    using IN, a list of constant expressions can be specified
    using BETWEEN, range of constant expressions can be specified
    using LIKE, a pattern can be specified
    using OR or AND, multiple conditions can be defined
    
    MySQL does not enforce the check constraint
    
    Syntax:
			CREATE TABLE table_name(
            -- column level constraint
				column_name datatype(size) CHECK constraint
            -- table level constraint
				CHECK (constraints)
            )

*/


use magnet_brains;

CREATE TABLE if not exists table_6(
col1 int check(col1 > 0),
col2 char(20) check(col2 like 'h%'),
col3 char(20) check(col3 in ('a','b', 'c')),
col4 int check(col4 between 5 and 10)
);

insert into table_6 values(1, 'haider', 'a', 6);
insert into table_6 values(10, 'haider', 'b', 7);
insert into table_6 values(34, 'haider', 'c', 8);
insert into table_6 values(34, 'haider', 'c', 10);
insert into table_6 values(34, 'haider', 'c', 5);


-- the following will give error
insert into table_6 values(0, 'haider', 'c', 8); -- because col1 = 0
insert into table_6 values(34, 'ironman', 'c', 8); -- because col2 is starting with 'i' not 'h'
insert into table_6 values(34, 'haider', 'd', 8); -- because col3 is 'd' that is not in ('a','b', 'c')
insert into table_6 values(34, 'haider', 'c', 4); -- because col4 < 5
insert into table_6 values(34, 'haider', 'c', 11); -- because col4 > 10




CREATE TABLE if not exists table_7(
col1 int ,
col2 char(20) ,
col3 char(20),
col4 int,

check(col4 > col1)
);

insert into table_7 values(11, 'haider', 'c', 34);

-- it will give  error
insert into table_7 values(34, 'haider', 'c', 11)