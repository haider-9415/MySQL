/*
	Aggregate functions operate on sets of rows to return one result per group
    
    these are also called "group functions" or "multiple row functions"
    
    these sets may be whole table or table split into groups based on criteria
    
    by default, all functions ignore null value and consider duplicate values
    but, using DISTINCT, functions does not consider duplicate values
*/ 