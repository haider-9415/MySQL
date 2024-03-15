/*
	By default, MySQL assigns a unique name to each constraint
    e.g., SYS_C003186, SYS_C001285, etc.
    
    but we can change
    
    Syntax:
			CONSTRAINT constraint_name constraint
            
	We cannot change some constraints like 'PRIMARY KEY', 'NOT NULL', 'UNIQUE'
    at column level constraint
    But we can change any constraint at table level
*/

use magnet_brains;

CREATE TABLE table_8 (
    col1 INT CHECK (col1 > 0),
    col2 INT
); 

CREATE TABLE table_9(
	col1 INT CONSTRAINT check_cons CHECK ( col1 > 0 ),
    col2 INT
);

insert into table_8 values(-5, 7); 

insert into table_9 values(-5, 7);


