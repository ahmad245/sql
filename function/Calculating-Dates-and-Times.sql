-- ADD DAY to curent date  
-- SELECT DATE_ADD(NOW(),INTERVAL 1 DAY ) 

 -- ADD YEAR to curent date
 -- SELECT DATE_ADD(NOW(),INTERVAL 1 YEAR)
 
 -- sub year or day form current date
 -- SELECT DATE_ADD(NOW(),INTERVAL -1 YEAR)
 -- SELECT DATE_SUB(NOW(),INTERVAL 1 YEAR)

-- DATEDIFF between date return value in days 
-- SELECT DATEDIFF('2020-02-05','2020-01-01')

-- TIME_TO_SEC different between time
SELECT TIME_TO_SEC('09:00')