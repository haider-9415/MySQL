/*
	we can change or ass default value to columns of an already
    existing table
    
    Syntax:
		   ALTER TABLE table_name 
		   ALTER COLUMN column_name SET DEFAULT default_value

	Remember
		 --> there will be no change in default values previously inserted
         
*/

use magnet_brains;

CREATE TABLE table_14 (
    col1 INT unique,
    col2 VARCHAR(20),
    col3 date,
    col4 char default 0
);

INSERT INTO table_14 VALUES(1, 'aaaaa', '2000-01-01', 'b');
INSERT INTO table_14 VALUES(2, default, '2000-01-02', 'c'); -- here default value is NULL for col2

ALTER TABLE table_14
ALTER COLUMN col2 SET DEFAULT 'string';

INSERT INTO table_14 VALUES(3, default, '2000-01-02', 'd'); -- now the gefault value is 'string' for col2
desc table_14;


-- we can cgange it if you have set it before
INSERT INTO table_14 VALUES(4, default, '2000-01-02', default);
desc table_14;

ALTER TABLE table_14
ALTER COLUMN col4 SET DEFAULT 'N';

INSERT INTO table_14 VALUES(5, default, '2000-01-02', default);
desc table_14;



