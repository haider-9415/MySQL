/*
	WEEKDAY() --> it rturns the date of the week
    
    it starts the week frm monday, i.e., 0=monday, 1=tuesday, ...., 6=sunday
*/ 
SELECT WEEKDAY('2023-02-1'); -- it returns 2 it means 1st day of feb is the 2nd day of the week
-- similarly 
SELECT WEEKDAY('2023-04-10');
SELECT WEEKDAY('2023-12-23');
SELECT WEEKDAY('2023-01-10');
SELECT WEEKDAY('2023-12-31');


