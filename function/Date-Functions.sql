--  NOW() :curent  date with time , CURDATE() : curnt date without tim , CURTIME() curent time without date
-- SELECT NOW() , CURDATE() , CURTIME()

-- extract date and time all this function return integer values
-- SELECT YEAR(NOW()) , DAY(NOW()) , MONTH(NOW()),HOUR(NOW()) ,MINUTE(NOW()), SECOND(NOW())

-- extract  DAYNAME and MONTHNAME as string
-- SELECT YEAR(NOW()) , DAYNAME(NOW()) , MONTHNAME(NOW()),HOUR(NOW()) ,MINUTE(NOW()), SECOND(NOW())

-- EXTRACT
-- SELECT EXTRACT(MONTH FROM NOW()) ,EXTRACT(YEAR FROM NOW())

USE sql_store;
SELECT * FROM orders WHERE YEAR(order_date) > YEAR(NOW())