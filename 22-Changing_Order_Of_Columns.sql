/*
	We can change the order of columns of an already existing table
    using the following commands
    
    To bring the column at 1st position
     --> ALTER TABLE table_name
		 MODIFY column_name datatype(size) FIRST;
	
    To bring after a column
     --> ALTER TABLE table_name
		 MODIFY column_name datatype(size) AFTER column_name;

*/

use magnet_brains;

CREATE TABLE table_17 (
    col1 INT,
    col2 VARCHAR(20) UNIQUE,
    col3 DATE
);

INSERT INTO table_17 VALUES(1, 'ab', '2023-12-10');
INSERT INTO table_17 VALUES(2, 'cd', '2023-12-11');
INSERT INTO table_17 VALUES(null, 'ef', '2023-12-12');
INSERT INTO table_17 VALUES(4, null,'2023-12-13');
INSERT INTO table_17 VALUES(null, 'gh', '2023-12-14'); 
INSERT INTO table_17 VALUES(5, 'ij', null);


ALTER TABLE table_17
MODIFY col3 DATE FIRST;

ALTER TABLE table_17
MODIFY col1 INT AFTER col2;

ALTER TABLE table_17
MODIFY col2 VARCHAR(20) FIRST;