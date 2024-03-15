/*
	Default Constraint:
    
    it is used to set default value for a column
    
    default value
			 --> can be specified for a column using the DEFAULT clause
			 --> is inserted in the column when you does not enter any value 
			 --> can be only one for a column
             
	NULL can be the default value if the column is not specified by 'NOT NULL'
    
    Syntax:
			CREATE TABLE table_name(
				column_name datatype(size) DEFAULT value
            )
    

*/


use magnet_brains;

CREATE TABLE IF NOT EXISTS table_5 (
    emp_code INT PRIMARY KEY,
    emp_name VARCHAR(20) NOT NULL,
    emp_gender CHAR(1),
    emp_salary DECIMAL DEFAULT 000000,
    
    -- we can set functions as default value
    entry_date DATE DEFAULT (curdate())
);

INSERT INTO table_5 VALUES(1,'ironman', 'M', 100000, '2015-03-12');
INSERT INTO table_5 VALUES(2,'batman', 'M', 100000, '2017-07-23');
INSERT INTO table_5 VALUES(3,'spiderman', 'M', 80000, '2013-03-22');

-- it will give error
-- INSERT INTO table_5 VALUES(4,'maria', 'F');

-- we have to use DEFAULT key word here also
INSERT INTO table_5 VALUES(4,'maria', 'F', DEFAULT, DEFAULT);

