/*
	DAYOFWEEK() --> it rturns the date of the week
    
    it starts the week frm sunday, i.e., 1=sunday, 2=monday, ..., 0=saturday
*/ 


SELECT DAYOFWEEK('2023-02-1'); -- it returns 4 it means 1st day of feb is the 4th day of the week
-- similarly 
SELECT DAYOFWEEK('2023-04-10');
SELECT DAYOFWEEK('2023-12-23');
SELECT DAYOFWEEK('2023-01-10');
SELECT DAYOFWEEK('2023-12-31');

