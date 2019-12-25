USE sql_store ;
-- >, =>, <, <=, =, !=, <>,    AND, OR, NOT, : AND execute first , IN , NOT IN , BETWEEN ,LIKE : % any number or _ single charachter,IS NULL IS NOT NULL
-- SELECT * FROM customers WHERE points > 3000

-- SELECT * FROM customers WHERE state='VA'
 -- SELECT * FROM customers WHERE state='va'
 
-- SELECT * FROM customers WHERE state !='va'
-- SELECT * FROM customers WHERE state <>'va'

-- SELECT * FROM customers WHERE birth_date > '1990-01-01'
-- AND OR
-- SELECT * FROM customers WHERE birth_date > '1990-01-01' AND points > 1000
-- SELECT * FROM customers WHERE birth_date > '1990-01-01' OR points > 1000

-- ex select All customers where birth after 1990-01-01 or  pont >1000 and live in va : AND execute first :  points >1000 AND state='va' 17 , 18 the same
-- SELECT * FROM customers Where birth_date > '1990-01-01' OR points >1000 AND state='va'
-- SELECT * FROM customers Where birth_date > '1990-01-01' OR (points >1000 AND state='va')

-- NOT 21 =22
-- SELECT * FROM customers Where NOT (birth_date > '1990-01-01' OR points >1000 )
-- SELECT * FROM customers Where  (birth_date <= '1990-01-01' AND points <1000 )

-- IN NOT IN
-- SELECT * FROM customers WHERE state ='va' OR state='GA' OR state='fl'
-- SELECT * FROM customers WHERE state IN ('va','ga','fl')
-- SELECT * FROM customers WHERE state NOT IN ('va','ga','fl')
-- SELECT * FROM products WHERE quantity_in_stock IN (49,38,72)

-- BETWEEN
-- SELECT * FROM customers WHERE points >=1000 AND points <= 3000
-- SELECT * FROM customers WHERE points BETWEEN 1000 AND 3000
-- SELECT * FROM customers WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'

-- LIKE
-- ex last_name start with b
-- SELECT * FROM customers WHERE last_name LIKE 'b%'
-- ex last_name  b but no matter with first or  last or middel charachter
-- SELECT * FROM customers WHERE last_name LIKE '%b%'
-- ex last_name  last charachter is y
 -- SELECT * FROM customers WHERE last_name LIKE '%y'
 -- ex last_name  last charachter is y but the first charachters is 5 _____ : 5 underdash
 -- SELECT * FROM customers WHERE last_name LIKE '_____y'
 -- ex first charachter is b and after 4 charachter is y
 -- SELECT * FROM customers WHERE last_name LIKE 'b____y'
 -- ex address contain trail or AVENUE, phone number end with 9
--  SELECT * FROM customers WHERE address LIKE "%trail%" OR address LIKE "%AVENUE%" 
 -- SELECT * FROM customers WHERE  phone LIKE "%9"
 -- SELECT * FROM customers WHERE  phone NOT LIKE "%9"
 
 -- IS NULL  IS NOT NULL
-- SELECT * FROM customers WHERE phone IS NULL
-- SELECT * FROM customers WHERE phone IS NOT NULL