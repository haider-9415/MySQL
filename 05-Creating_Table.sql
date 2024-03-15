/*
	when a table is created, names, data_types and sizes are supplied for each column
    
    each table must have atleast one column
    
    you have to open the database using 'USE' keyword for which you are creating a table
    
    Syntax:
			CREATE TABLE IF NOT EXISTS table_name(
				column1_name its_datatype(its_size),
                column2_name its_datatype(its_size),
                .
                .
                .
                columnN_name its_datatype(its_size)
			);
	
    we can set constraints on the values that can be entered into its fields
    
    'IF NOT EXISTS' --> here, it works as it works in creating the database
*/

CREATE DATABASE magnet_brains;

USE magnet_brains;

CREATE TABLE employee_details (
    name CHAR(20),
    contact INT,
    email_id VARCHAR(20),
    age CHAR(2)
);

CREATE TABLE video_details (
    name CHAR(20),
    duration TIME
);

/*
	in CHAR, it has size 1 by default, so, if we don't specify its size then it will not give error
    in VARCHAR, it has no size by default, so, if we don't specify its size then it will give error
    
    CHAR <= 255
    
    on using INT, its size does not matter, it can be ignored if there is a need to increase the size in future
    
    
*/
