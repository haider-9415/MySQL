/*
	to modify columns, use the following syntax
    
    UPDATE tbale_name
    SET col1=value, col1=value,  ..., colN=value
    WHERE condition;
    
    First follow the path: edit --> preferences --> SQL editor
    and then deselect the 'safe update' mode and reconnect 
    
*/

use magnet_brains;

CREATE TABLE table_32(
	col1 INT ,
    col2 VARCHAR(10),
    col3 DATE DEFAULT(curdate()),
    col4 char(1)
);	

INSERT INTO table_32 VALUES (1, 'abc', '2023-12-1', 'a'),
							(2, 'def', NULL, 'b'),
                            (3, 'ghi', '2023-12-3', 'c'),
                            (NULL, 'jkl', '2023-12-4', 'd'),
                            (5, 'mno', '2023-12-5', 'e'),
                            (6, NULL, '2023-12-6', 'f'),
                            (7, 'pqr', '2023-12-7', 'g'),
                            (8, 'stu', '2023-12-8', 'h');

-- without using 'where' it will update all row of the selected column
UPDATE table_32
SET col2 = 'xyz';


-- using 'where' we can update row of the perticular column
UPDATE table_32
SET col3 = '2023-10-01'
WHERE col1 = 5 ;

UPDATE table_32
SET col4 = 'z'
WHERE col3 = '2023-12-3' ;

UPDATE table_32
SET col4 = 'y', col2 = 'abcd1234', col3 = '2012-12-12'
WHERE col1 = 7 ;

UPDATE table_32
SET col4 = 'x'
WHERE col2 like 'x%' ;

UPDATE table_32
SET col4 = 'p', col2 = 'rst987'
WHERE col1 between 2 and 7 ;

UPDATE table_32
SET col4 = null
WHERE col3 = '2023-12-1'