/*
  STRCMP(str1, str2) --> it is used to compare strings
  
  it returns 0 if str1 = str2
  it returns 1 if str1 > str2
  it returns -1 if str1 < str2
  
  it compares letter by letter not on the basis of length
*/ 

select strcmp('a', 'a');
select strcmp('a', 'b');
select strcmp('b', 'a');

-- you acn see it compares letter by letter
select strcmp('ab', 'b');


use menagerie;
select name, type, strcmp(name, type) from event;
select name, type, strcmp(type, name) from event;









