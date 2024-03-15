/*
	Unique Constraint:
    
    this constraint ensures that no two rows have the same value
    in the specified column(s)
    
    Syntax:
			CREATE TABLE table_name(
            -- to set as column constraint
				column1_name datatype(size) UNIQUE,
                column2_name datatype(size) UNIQUE,
                .
                .
                .
                columnN_name datatype(size) UNIQUE
			-- to set as table constraint
				UNIQUE column1_name, column2_name, ...., columnN_name
            );


*/


use magnet_brains;

CREATE TABLE IF NOT EXISTS table_2 (
-- column level constraint
    emp_code INT UNIQUE NOT NULL,
    emp_name VARCHAR(20) UNIQUE,
    gender CHAR(1),
    salary DECIMAL,
    
-- table level constraint
    mobile INT,
    emp_email VARCHAR(30),
    UNIQUE (mobile , emp_email)
);

insert into table_2 values(1, 'tony stark', 'M', 50000, 111, 'tone@gmail.com');
insert into table_2 values(2, 'batman', 'M', 70000, 222, 'bat@gmail.com');
insert into table_2 values(3, 'wanda', 'F', 40000, 333, 'wanda@gmail.com');
insert into table_2 values(4, 'maria', 'F', 90000, 444, 'maria1@gmail.com');

-- the following lines will give error, because, four fields are unique
insert into table_2 values(4, 'spiderman', 'M', 80000, 555, 'spider@gmail.com');
insert into table_2 values(5, 'maria', 'F', 80000, 666, 'maria2@gmail.com');
insert into table_2 values(6, 'wanda2', 'F', 80000, 333, 'wanda2@gmail.com');
insert into table_2 values(7, 'maria3', 'F', 80000, 777, 'maria1@gmail.com');
insert into table_2 values(null, 'maria4', 'F', 80000, 888, 'maria4@gmail.com');


insert into table_2 values(8, null, 'F', 80000, 999, 'null@gmail.com');


