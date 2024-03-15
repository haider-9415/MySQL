/*
  REVERSE(str/column_name)
  
  it reverse the whole string
*/

select reverse('haider');
select reverse('123456789');
select reverse('!@#$%');
select reverse(987654321);
select reverse(9876.54321);

# on giving null value, it returns null value
select reverse(null);


use menagerie;
select name, reverse(name) from event;
select date, reverse(date) from event;

# it will not work on null values 
select death, reverse(death) from pet;

