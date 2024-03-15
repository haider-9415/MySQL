/*
  trim({both|leading|trailing} remstr from str)
  this function removes the characetr specified as 'remstr' from prefix and suffix
  
  remstr --> it refers that character which we have to remove
  both --> it is used to remove from both sides
  leading --> it is used to remove from starting only
  trailing --> it is used to remove from ending only
  
  these all four parameters are optional, by default, it removes only spaces, if remstr is not specified,
  and from both sides, if both, leading or trailing is not specified
  
*/

use menagerie;

select trim(leading 'f' from name) from event; # it will not work, because, it is case sensitive

select trim(leading 'F' from name) from event;

select trim(trailing 'y' from name) from event;

select trim(both '*' from '****haider*****');

select trim(both '*' from '*#  **haider***abcd');

select trim(leading '*' from '****haider*****');

select trim(trailing '*' from '****haider*****');


select trim(leading '*' from '***   *haider**$**');

select trim(trailing '*' from '****haider***  &**');

select trim('*' from '****haider*****');

select trim('****haider*****');

select '         haider      ',trim('         haider      '); # bydefault, it will romeve spaces9