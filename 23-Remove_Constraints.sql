/*
	We can remove constraints
    
    To remove PRIMARY KEY:
						  ALTER TABLE table_name
						  DROP PRIMARY KEY;
	but the column remains NOT NULL
	
    To remove DEFAULT:
					  ALTER TABLE table_name
					  ALTER column_name DROP DEAFULT;
	
    To remove UNIQUE:
					 ALTER TABLE table_name
					 DROP INDEX key_name;
	
    To find key_name --> SHOW INDEX FROM table_name;
    
    To remove NOT NULL:
					   ALTER TABLE table_name
					   MODIFY column_name datatype(size);
	
    To remove DEFAULT:
					  ALTER TABLE table_name
					  ALTER column_name DROP DEFAULT;
	
    To remove CHECK or table level constraint:
											  ALTER TABLE table_name
											  DROP CONSTRAINT constraint_name;
	
    To remove FOREIGN KEY:
						  ALTER TABLE table_name
						  DROP FOREIGN KEY constraint_name;
	

*/

use magnet_brains;

CREATE TABLE table_18(
	col1 INT PRIMARY KEY,
    col2 INT NOT NULL,
    col3 INT UNIQUE,
    col4 INT DEFAULT 2
);
DESC table_18;

-- to remove PRIMARY KEY
ALTER TABLE table_18
DROP PRIMARY KEY;
DESC table_18;
-- but col1 is still NOT NULL

-- to remove DEFAULT
ALTER TABLE table_18
ALTER col4 DROP DEFAULT;
DESC table_18;

-- to remove UNIQUE
SHOW INDEX FROM table_18;
ALTER TABLE table_18
DROP INDEX col3;
DESC table_18;

-- to remove NOT NULL
ALTER TABLE table_18
MODIFY col2 INT;
DESC table_18;



CREATE TABLE table_19(
	col1 INT CONSTRAINT CONS1 CHECK(col1 > 0),
    col2 INT,
    col3 INT,
    CONSTRAINT CONS2 UNIQUE(col2, col3)
);
DESC table_19;

ALTER TABLE table_19
DROP CONSTRAINT CONS1;
DESC table_19;

ALTER TABLE table_19
DROP CONSTRAINT CONS2;
DESC table_19;



CREATE TABLE table_20(
	col1 INT PRIMARY KEY,
    col2 INT
);
CREATE TABLE table_21(
	col100 INT PRIMARY KEY,
    col200 INT,
    CONSTRAINT cons3 FOREIGN KEY (col200) REFERENCES table_20(col1)
);
DESC table_20;
DESC table_21;

ALTER TABLE table_21
DROP FOREIGN KEY cons3;
DESC table_21;




