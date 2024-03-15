/*
	We can change the name of an existing table or its column name
    
    To change table name:
						 ALTER TABLE table_name
						 RENAME TO new_name;
	
    To change column name:
						  ALTER TABLE table_name
						  RENAME COLUMN old_name TO new_name;
	
    We can change column name, datatype, size, constraint and order
    simultaniously using the following syntax
    
    ALTER TABLE table_name
    CHANGE old_name new_name datatype(size) constraint FIRST/AFTER column_name;
*/

use magnet_brains;

CREATE TABLE table_22(
	col1 INT PRIMARY KEY,
    col2 VARCHAR(20),
    col3 DATE
);

CREATE TABLE table_23(
	col1 INT PRIMARY KEY,
    col2 VARCHAR(20),
    col3 DATE
);

CREATE TABLE table_24(
	col1 INT PRIMARY KEY,
    col2 VARCHAR(20),
    col3 DATE
);

-- to change table name
ALTER TABLE table_22
RENAME TO table_TT;

ALTER TABLE table_23
RENAME TO table_TTH;


-- syntax-1  -  to change column name
ALTER TABLE table_TT
RENAME COLUMN col1 TO colOne;
DESC table_TT;

ALTER TABLE table_TT
RENAME COLUMN col3 TO colThree;
DESC table_TT;

ALTER TABLE table_TTH
RENAME COLUMN col2 TO colTwo;
DESC table_TTH;


-- syntax-2  -  to change column name
ALTER TABLE table_TT
CHANGE col2 colTwo INT UNIQUE AFTER colThree;
DESC table_TT;

ALTER TABLE table_TTH
CHANGE col3 colThree INT CONSTRAINT cons1 CHECK(colThree > 0) FIRST;
DESC table_TTH;







