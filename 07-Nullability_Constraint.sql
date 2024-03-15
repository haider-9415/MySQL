/*
	Nullability Constraint
    
    if we write the keyword 'NOT NULL' immediately after the datatype of column
    or size, the column cannot have empty values, i.e., NULL values

	it cannot apply as table constraints
*/

use magnet_brains;

CREATE TABLE table_1 (
    col1 INT NOT NULL,
    col2 VARCHAR(30) NOT NULL,
    col3 CHAR(1),
    col4 DECIMAL NOT NULL
);
/*
	now col1, col2 ad col4 in table table_1 connot accept NULL values
    
    if a null vallue is entered in them then an error appears
*/

-- to insert values in the table
INSERT INTO table_1 VALUES(null,'abcd','M',1234);
INSERT INTO table_1 VALUES(1,null,'M',5678);
INSERT INTO table_1 VALUES(1,'abcd','M',null);

INSERT INTO table_1 VALUES(1,'abcd',null,9011); -- it will not give error, because, it has no constraint
