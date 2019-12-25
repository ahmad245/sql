USE sql_store;
-- combine row from multiple table or one table  , combine records from multiple query  
-- the number of column from each query must be equal

-- ex combine records from multiple query  (from one table)
 -- SELECT customer_id ,first_name, points,'Bronz' as type  FROM customers WHERE points < 2000  
 -- UNION 
-- SELECT customer_id ,first_name, points,'Silver' as type  FROM customers WHERE points  BETWEEN  2000 AND 3000
 -- UNION 
-- SELECT customer_id ,first_name, points,'Golden' as type  FROM customers WHERE points  >   3000
-- order by first_name

-- ex  combine records from multiple query  (from multiple tables) one result set 
-- SELECT first_name FROM customers UNION SELECT name FROM shippers