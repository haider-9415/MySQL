/*
	A "Join" is a query that combine rows from two or more tables
    
    The function of combining data from multiple tables is called "joining"
    
    types of join:
			1) Cross join
			2) Natural join
			3) Equi join
			4) Inner join
			5) Left join
			6) Right join
			7) Self join
	
    
    A "table alias" is a temporary lable given along with the table name in the FROM clause

	Syntax:
			SELECT table_alias.column_name
            FROM table_name table_alias, table_name table_alias,...
            WHERE table_alias Condition
*/
use my_database;


/* we will create tables that will be used in upcoming lectures */

CREATE TABLE TB1(
	col1 INT,
    col2 CHAR(2)
);

CREATE TABLE TB2(
	col1 INT,
    col20 DATE
);

CREATE TABLE TB3(
	col10 INT,
    col200 DATE
);

CREATE TABLE TB4(
	empid INT,
    post CHAR(1),
    supid INT
);

CREATE TABLE TB5(
	col1 INT,
    colA CHAR(1),
    colB DATE
);

CREATE TABLE TB6(
	col1 INT,
    colA CHAR(1),
    colC INT
);


INSERT INTO TB1	VALUES(1, 'aa'),(2, 'bb'),(3, 'cc'),(4, 'dd'),(5, 'ee'),
                      (6, 'ff'),(7, 'gg'),(8, 'hh'),(9, 'ii'),(10, 'jj');

INSERT INTO TB2	VALUES(1, '2000-01-01'),(11, '2001-01-01'),(2, '2002-01-01'),(12, '2003-01-01'),
					  (3, '2004-01-01'),(13, '2005-01-01'),(4, '2006-01-01'),(14, '2007-01-01'),
                      (5, '2009-01-01'),(15, '2008-01-01');

INSERT INTO TB3	VALUES(1, '2000-01-01'),(11, '2001-01-01'),(2, '2002-01-01'),(12, '2003-01-01'),
					  (3, '2004-01-01'),(13, '2005-01-01'),(4, '2006-01-01'),(14, '2007-01-01'),
                      (5, '2009-01-01'),(15, '2008-01-01');

INSERT INTO TB4	VALUES(1, 'a', NULL),
					  (2, 'b', 1),(3, 'b', 1),
                      (5, 'c', 2),(6, 'c', 2),
                      (7, 'd', 3),(8, 'd', 3),
                      (9, 'e', 5),(10, 'f', 8);
                      
INSERT INTO TB5	VALUES(1, 'a', '2000-01-01'),(2, 'b', '2001-01-01'),
					  (3, 'c', '2002-01-01'),(4, 'd', '2003-01-01');

INSERT INTO TB6	VALUES(1, 'a', 101),(20, 'b', 102),
					  (3, 'z', 104),(40, 'd', 103);

