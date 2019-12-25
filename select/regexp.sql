USE sql_store ;
-- REGEXP ^ the first charachter , $ the last charachter ,| pipe multiple words logical or , [] any charachter ,[-] range

-- SELECT * FROM customers WHERE last_name LIKE "%field%" 
-- SELECT * FROM customers WHERE last_name REGEXP "field" 
-- ex field the begning of the string 
-- SELECT * FROM customers WHERE last_name REGEXP "^field" 

-- ex field the last of the string 
-- SELECT * FROM customers WHERE last_name REGEXP "field$" 

-- ex last_name contain   field or mac or rose 
-- SELECT * FROM customers WHERE last_name REGEXP "field|mac|rose" 
-- SELECT * FROM customers WHERE last_name REGEXP "field$|^mac|rose" 

-- ex last name (ge) or (ie) or (me)
-- SELECT * FROM customers WHERE last_name REGEXP "[gim]e" 
-- ex last name (eg) or (ei) or (em)
-- SELECT * FROM customers WHERE last_name REGEXP "e[gim]" 

-- ex any charachter from a to h
-- SELECT * FRom customers WHERE last_name REGEXP '[a-h]e'


-- ex first name like elka or ambur
-- SELECT * FROM customers WHERE first_name REGEXP 'elka|ambur'

-- ex last name end with  ey or on
-- SELECT * FROM customers WHERE last_name REGEXP 'ey$|on$'

-- ex last name start  with  my or contain se
-- SELECT * FROM customers WHERE last_name REGEXP '^my|se'

-- ex last name contain b followed by r or u
-- SELECT * FROM customers WHERE last_name REGEXP 'b[ru]'
