/*
	the following syntax is used to create a database
    
    CREATE DATABASE database_name --> it does not check DB of the given name exists or not
    or
	CREATE DATABASE IF NOT EXISTS database_name --> --> it checks DB of the given name exists or not

	In database_name:
			--> spaces or not allowed
            --> only '_' or '$' can be used
            --> digits can also be used even as first character
            --> it should not be a keyword
*/

CREATE DATABASE firstDB;

CREATE DATABASE IF NOT EXISTS firstDB; -- it will not create, because, the name is same

-- it will create with other name 
CREATE DATABASE IF NOT EXISTS secondDB;

CREATE DATABASE third_DB;

CREATE DATABASE forth$DB;

CREATE DATABASE fifth12DB;

CREATE DATABASE 12sixthDB;

-- on using 'IF NOT EXISTS', there is no error appears and without it, the error appears
CREATE DATABASE IF NOT EXISTS third_DB;
CREATE DATABASE firstDB;
CREATE DATABASE IF NOT EXISTS secondDB;

