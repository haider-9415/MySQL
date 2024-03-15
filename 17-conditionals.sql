/* 
  conditional expressions provides the use of if-then-else logic whithin a sql command
  
  synetx:
        select col_1,clo2,....,col'n', case col_n 
                                       when conditional_expr1 then return_expr1
									   when conditional_expr2 then return_expr2
                                                       .
                                                       .
													   .
					                   when conditional_expr'n' then return_expr'n'
                                       else else_exrp 
                                       end as "alaise" 
		from table_name
*/

use menagerie;
SELECT * , CASE sex 
           WHEN 'f' THEN 'Female'
		   WHEN 'm' THEN 'Male'
		   ELSE 'None'
		   END AS 'gender'
FROM pet;

SELECT name, owner, birth, CASE sex 
                           WHEN 'f' THEN 'Female'
					       WHEN 'm' THEN 'Male'
                           ELSE 'None'
                           END AS 'gender'
FROM pet;

SELECT name, CASE sex 
			 WHEN 'f' THEN 'Female'
			 WHEN 'm' THEN 'Male'
			 ELSE 'None'
			 END AS 'gender',
			 owner, birth
FROM pet;



use sakila;
SELECT payment_id,payment_date, CASE amount 
			                    WHEN 5.99 THEN amount+1
			                    WHEN 7.99 THEN amount-1
			                    ELSE 0
			                    END AS 'midified'
                                ,amount
FROM payment
WHERE amount>=5.99 && amount<=7.99;

SELECT payment_id,payment_date, CASE amount 
			                    WHEN 5.99 THEN amount+1
			                    WHEN 7.99 THEN amount-1
			                    ELSE amount
			                    END AS 'midified'
                                ,amount
FROM payment