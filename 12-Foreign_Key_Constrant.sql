/*
	Foreign Key Constrant:
    
    In an RDBMS, tables reference one another through common fields and referential integrity 
    is enforced to ensure validity of references 
    
    Referential integrity is a system of rules that a DBMS uses to ensure that relationship
    between records in related tables are valid and that user don't accidently delete or update 
    related data
    
    Referential integrity is ensured through FOREIGN KEY constraint
    
    the table which is referenced is called 'child table'
    the table to which the child table is referenced is called 'parent table'
    
    In simple words, these tables have same column through which one is connected to other
				     using FOREIGN KEY constraint and
                     that column in parent table must be 'primary key'
	
    Syntax-1-column level constraint:
			CREATE TABLE table_name(child table) (
				column_name datatype(size) REFERENCES table_name(parent table)
                [column_name(primary key)] [ON DELETE referential_option] [ON UPDATE referential_option]
            );
            
            in this, by default,
				--> if we skip 'column_name(primary key)' then MySQL will reference the
					primary key of reference table
				--> the database server does not allow to voilate referential integrity
					and gives an error if we delete rows from parent table before 
                    we delete rows from parent table. So, we use referential options to 
                    cause deletes from a parent table to trips delete on child table
                    
    Referential options 
    1) CASCADE --> when we use it then on deleting or updating any row from the parent 
				   table, that row in child table will be deleted or updated automatically
	
    2) SET NULL --> when we use it then on deleting or updating any row from the parent 
					table, the value of column(foreign key) in child table will be set to NULL
	
    3) RESTRICT --> when we use it then on deleting or updating any row from the parent 
					table, MySQL does not allow to delete or update rows in the parent table
	
	4) NO ACTION --> it is similar to 'RESTRICT', the difference is that it checks the referntial 
					 integrity after trying to modify the table if referntial integrity
                     is voilated then it does not allow otherwise allows
                     
	5) SET DEFAULT --> when we use it then on deleting or updating any row from the parent 
					   table, its default value will be set
	
    Syntax-2-table level constraint:
		CREATE TABLE table_name(child table) (
				column_name datatype(size)
                column_name datatype(size)
                FOREIGN KEY column_name(from child table) REFERENCES table_name(parent table)
                [column_name(primary key)] [ON DELETE referential_option] [ON UPDATE referential_option]
            );
			
*/
/*
	MySQL is capable to creating databases in many different storage enginesthat different
    features.
    The default engine is ISAM but it does not support foreign keys
    We can change it
	
    Syntax-1:
			SET default_storage_engine = engine_name;
	Syntax-2:
			CREATE TABLE table_name(......) ENGINE = engine_name
*/

SET default_storage_engine = INNODB;

CREATE DATABASE school_info; 
use schoole_info;

-- parent table
CREATE TABLE GurdianDetails (
    GUID INT PRIMARY KEY,
    GNAME VARCHAR(20),
    GPHONE CHAR(10),
    GADDRESS VARCHAR(50)
);

-- child table
CREATE TABLE StudentDetails (
    RollNo INT PRIMARY KEY,
    SNAME VARCHAR(20),
    DateOfBirth DATE,
    GUID INT REFERENCES GurdianDetails (GUID)
    ON DELETE CASCADE ON UPDATE CASCADE
);

describe GurdianDetails;
desc StudentDetails;



-- we can use more than one columns

-- parent table
CREATE TABLE GurdianDetails1 (
    GUID INT,
    GNAME VARCHAR(20),
    GPHONE CHAR(10),
    GADDRESS VARCHAR(50),
    PRIMARY KEY (GUID, GNAME)
);

-- child table
CREATE TABLE StudentDetails1 (
    RollNo INT PRIMARY KEY,
    SNAME VARCHAR(20),
    DateOfBirth DATE,
    GUID INT,
    GNAME VARCHAR(20),
    FOREIGN KEY (GUID , GNAME)
        REFERENCES GurdianDetails1 (GUID , GNAME)
        ON DELETE CASCADE ON UPDATE CASCADE
);

describe GurdianDetails1;
desc StudentDetails1;