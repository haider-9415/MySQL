/*
	count(column) --> it return no. of rows containing non-null values
    
    count(*) --> it return no. of all rows in a table

*/

use menagerie;

SELECT 
    COUNT(remark)
FROM
    event;

SELECT 
    COUNT(*)
FROM
    event;

SELECT 
    COUNT(DISTINCT type)
FROM
    event;
-- distinct keyword removes other rows containing same value


