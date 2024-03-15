/*
  ltrim(str) --> it removes spaces from left side of the given string
*/

use menagerie;

-- select ltrim('*' from '****haider*****'); # it will give error

select ltrim("*****haider*****");

select ltrim("123haider456");

select ltrim("123   haider  456");

select "          haider       ",ltrim("         haider       ");