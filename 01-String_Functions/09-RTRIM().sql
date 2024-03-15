/*
  rtrim(str) --> it removes spaces from right side of the given string
*/

use menagerie;

-- select rtrim('*' from '****haider*****'); # it will give error

select rtrim("*****haider*****");

select rtrim("123haider456");

select rtrim("123   haider  456");

select "          haider       ",rtrim("         haider       ");