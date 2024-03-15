/*
	To insert a row in a table, use the following syntax
	-->	INSERT INTO table_name VALUES (data_col1, data_col2,... ,data_colN)

	To insert rows in a table, use the following syntax
	-->	INSERT INTO table_name VALUES (data_col1, data_col2,... ,data_colN),
									  (data_col1, data_col2,... ,data_colN),
                                      .
                                      .
                                      .
                                      up to row 'n'
                                      
	To insert data in a perticular column, use the following syntax
    If the table has 'n' columns then
    --> INSERT INTO table_name (col1, col2, col5) VALUES (data_col1, data_col2, data_col5)
    Remember
		 --> the columns you will not select, their default value is inserted
             if any of them has no default value and it is defined NOT NULL
             then it will give an error and the data will not be inserted

	To insert NULL value in any column, simpely enter NULL for that column
    
    To insert the date, use '' and the formate is YYYY-MM-DD
    
    To insert data from another table, use the following syntax
    --> INSERT INTO table_name [(col1, col2, ...., colN)]
		SELECT * or (col1, col2, ...., colN) FROM table_name
        [WHERE condition];
	Remember
		 --> the columns, being inserted into, must match the columns
			 output by subquery
             
    
*/
use magnet_brains;

CREATE TABLE table_28(
	col1 INT PRIMARY KEY,
    col2 VARCHAR(10) UNIQUE,
    col3 DATE NOT NULL DEFAULT(curdate())
);	

CREATE TABLE table_29(
	col1 INT ,
    col2 VARCHAR(10) UNIQUE,
    col3 DATE NOT NULL DEFAULT(curdate())
);	


-- to insert row one by one
INSERT INTO table_28 VALUES (1, 'abc', '2023-12-1');
INSERT INTO table_28 VALUES (2, 'def', '2023-12-2');


-- to insert multiple rows
INSERT INTO table_29 VALUES (1, 'ghi', '2023-12-3'),
							(2, 'jkl', '2023-12-4');
	
    
-- to insert data fro perticular columns

-- the following will give error, because col1 is primary key and no default has been set for it 
INSERT INTO table_28 (col2) VALUES ('mno'); 
-- first we will set default value for it
ALTER TABLE table_28
ALTER COLUMN col1 SET DEFAULT 100;
-- now it will not give error
INSERT INTO table_28 (col2) VALUES ('mno'); 

-- the column is not defined NOT NULL & it has no default value then NULL is inserted into it
-- for example
INSERT INTO table_29 (col2) VALUES ('pqr'); 


-- to insert NULL for a column
INSERT INTO table_28 VALUES (3,NULL,'2023-12-5'); 
-- the following will give error, because, col3 is NOT NULL similarly it will happen with col1
INSERT INTO table_28 VALUES (3,'stu',NULL);
-- if you enter default then it will not give error
INSERT INTO table_28 VALUES (4,'vwx',DEFAULT);



CREATE TABLE table_30(
	col1 INT ,
    col2 VARCHAR(10) UNIQUE,
    col3 DATE DEFAULT(curdate())
);	


-- to insert from another table

-- if you have to select perticular columns
INSERT INTO table_30 (col1,col2)
SELECT col1, col2 FROM table_29;


CREATE TABLE table_31(
	col1 INT ,
    col2 VARCHAR(10) UNIQUE,
    col3 DATE DEFAULT(curdate())
);	

-- if you have to select all columns
INSERT INTO table_31
SELECT * FROM table_29;
