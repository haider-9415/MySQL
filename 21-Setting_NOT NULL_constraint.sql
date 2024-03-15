/*
	We can put NOT NULL constraint to the column of an already existing
    table using the following command.
    
    ALTER TABLE table_name
    MODIFY column_name datatype(size) NOT NULL
    
    We cannot insert NOT NULL to a column which already has NULL value

*/

use magnet_brains;

CREATE TABLE table_15 (
    col1 INT,
    col2 VARCHAR(20) UNIQUE
);
DESC table_15;

ALTER TABLE table_15
MODIFY col1 INT NOT NULL;
DESC table_15;

ALTER TABLE table_15
MODIFY col2 VARCHAR(20) NOT NULL;
DESC table_15;

-- now if we try to insert NULL value in col1 or col2 then it will give error
INSERT INTO table_15 VALUES(1, 'a');
INSERT INTO table_15 VALUES(2, 'b');
INSERT INTO table_15 VALUES(null, 'c');
INSERT INTO table_15 VALUES(4, null);
INSERT INTO table_15 VALUES(null, null);


-- now we will see it in the presence of data
CREATE TABLE table_16 (
    col1 INT,
    col2 VARCHAR(20) UNIQUE,
    col3 CHAR
);
DESC table_16;

INSERT INTO table_16 VALUES(1, 'ab', 'c');
INSERT INTO table_16 VALUES(2, 'de', 'f');
INSERT INTO table_16 VALUES(null, 'gh', 'i');
INSERT INTO table_16 VALUES(4, null,'j');
INSERT INTO table_16 VALUES(null, null, 'k'); 

-- the following will give error, because, in the presence of NULL valueyou can not give NOT NULL 
ALTER TABLE table_16
MODIFY col1 INT NOT NULL;
-- similarly
ALTER TABLE table_16
MODIFY col2 VARCHAR(20) NOT NULL;
DESC table_16;

-- but the following will not give error, because, it has no NULL value
ALTER TABLE table_16
MODIFY col3 CHAR NOT NULL;
DESC table_16;

-- now if we try to insert NULL in col3 of table_16 then it will give error
INSERT INTO table_16 VALUES(6, 'lm', null);


