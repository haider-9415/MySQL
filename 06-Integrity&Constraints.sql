/*
	Data Integrity:
    
    Maintaining accuracy, consistancy and reliability of data stored
    in the database is called "data integirty".
    
    there are four types of data integrity
    
    1) Row Integrity --> Rows in a table must have  a unique identifire
						 that can be used to tell apart each record.
                         The identifire is known as "primary key".
	
    2) column Integrity --> Data stored in a column must adhere to the same
							format and definition.
	
    3) Referential Integrity
    
    4) User-Defined Integrity --> Some applications have complex buisness logic
								  that can't be enforced by other three types
                                  so, we have to implement our own logic.
                                  
	.........................................................................................                             
	
    
    Constraints:
    
    Constraint is a condition that is applied on a column or set of columns
    in a table.
    
    Constraints applied to maintain data integrity are also known as 
    "integrity constraints".
    
    there are two types of constraints
    
    1) Column Constraints      2) Table Constraints
    the difference is that Column Constraints apply only to individual 
	columns and Table Constraints apply to groups of one or more columns.
    
    
    Syntax:
			CREATE TABLE table_name(
            -- to set column constraints
				column1_name its_datatype(size) column_constraint1, column_constraint2,...., column_constraintN,
				column2_name its_datatype(size) column_constraint1, column_constraint2,...., column_constraintN,
				.
				.
				.
				columnN_name its_datatype(size) column_constraint1, column_constraint2,...., column_constraintN
			-- to set table constraints
				table_constraint column1_name, column2_name,...., columnN_name
            );
*/
