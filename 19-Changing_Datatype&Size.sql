/*
	we can change column size orr its type using the following command
    
    ALTER TABLE table_name 
    ADD column_name datatype(size)
    
    Remember:
		  --> all rows of the column contain NULL

*/
use magnet_brains;

CREATE TABLE table_13 (
    col1 INT,
    col2 CHAR(20),
    col3 VARCHAR(20),
    col4 DATE
);

ALTER TABLE table_13
MODIFY col1 decimal;
DESC table_13;

ALTER TABLE table_13
MODIFY col4 int;
DESC table_13;

ALTER TABLE table_13
MODIFY col4 varchar(20);
DESC table_13;

ALTER TABLE table_13
MODIFY col2 varchar(20);
DESC table_13;

ALTER TABLE table_13
MODIFY col3 char;
DESC table_13;

-- we can increase or decrease the size
ALTER TABLE table_13
MODIFY col3 char(10);
DESC table_13;

ALTER TABLE table_13
MODIFY col2 varchar(15);
DESC table_13;

ALTER TABLE table_13
MODIFY col2 char(7);
DESC table_13;

ALTER TABLE table_13
MODIFY col3 varchar(10);
DESC table_13;



-- now we will see these changes in the presence of values
-- first we will convert them at their initial states
ALTER TABLE table_13
MODIFY col1 int,
MODIFY col2 char(20),
MODIFY col3 varchar(10),
MODIFY col4 date;
DESC table_13;

INSERT INTO table_13 VALUES(1, 'a', 'b', '2000-01-01');
INSERT INTO table_13 VALUES(2, 'a', 'b', '2000-01-02');
INSERT INTO table_13 VALUES(3, 'a', 'b', '2000-01-03');

ALTER TABLE table_13
MODIFY col1 decimal;
DESC table_13;

-- after converting date column in int, it will show year, month and day as an integer
ALTER TABLE table_13
MODIFY col4 int;
DESC table_13;

ALTER TABLE table_13
MODIFY col4 varchar(20);
DESC table_13;

ALTER TABLE table_13
MODIFY col2 varchar(20);
DESC table_13;

ALTER TABLE table_13
MODIFY col3 char;
DESC table_13;

-- we can increase or decrease the size
ALTER TABLE table_13
MODIFY col3 char(10);
DESC table_13;

ALTER TABLE table_13
MODIFY col2 varchar(15);
DESC table_13;

ALTER TABLE table_13
MODIFY col2 char(7);
DESC table_13;

ALTER TABLE table_13
MODIFY col3 varchar(10);
DESC table_13;

-- it will convert into date formate
ALTER TABLE table_13
MODIFY col4 date;
DESC table_13;



-- if data in the row is greater than the given size then it will give error
ALTER TABLE table_13
MODIFY col1 int,
MODIFY col2 char(20),
MODIFY col3 varchar(10),
MODIFY col4 date;
DESC table_13;

INSERT INTO table_13 VALUES(4, 'aaaaa', 'bbbbb', '2000-01-03');

ALTER TABLE table_13
MODIFY col2 varchar(4); -- it will give error, because, row has 5 characters and you have given size less than 5
DESC table_13;

-- similarly
ALTER TABLE table_13
MODIFY col3 char(4);
DESC table_13;

-- and we cannot change char or varchar into int and etc.
ALTER TABLE table_13
MODIFY col2 int;
DESC table_13;

ALTER TABLE table_13
MODIFY col3 int;
DESC table_13;

-- we can increase easly
ALTER TABLE table_13
MODIFY col2 varchar(17);
DESC table_13;

ALTER TABLE table_13
MODIFY col3 char(12);
DESC table_13;

