/*
	to add columns to a table, use the following syntax
	
    ALTER TABLE table_name 
    ADD column_name datatype(size) constraints

*/

use magnet_brains;

CREATE TABLE table_10 (
    col1 INT PRIMARY KEY,
    col2 VARCHAR(20),
    col3 DATE
);

INSERT INTO table_10 VALUES(1, 'abc', '2023-01-01');
INSERT INTO table_10 VALUES(2, 'def', '2023/01/02');
INSERT INTO table_10 VALUES(3, 'ghi', '2023/01/03');
INSERT INTO table_10 VALUES(4, 'jkl', '2023/01/04');

-- to add a column
ALTER TABLE table_10
ADD col4 INT;

ALTER TABLE table_10
ADD col5 varchar(20),
ADD col6 date;

ALTER TABLE table_10
ADD col7 INT NOT NULL,
ADD col8 varchar(20) NOT NULL,
ADD col9 date;
-- we cannot use 'NOT NULL' for 'daye' data type

	