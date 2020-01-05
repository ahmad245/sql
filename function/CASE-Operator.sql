USE sql_store;

-- SELECT order_id ,
--      CASE 
--         WHEN YEAR(order_date)=YEAR(NOW())-1 THEN 'Active'
--        WHEN  YEAR(order_date)=YEAR(NOW())-2 THEN 'Last Year'
--        WHEN YEAR(order_date) < YEAR(NOW())-2 THEN 'ARCHIVE'
--        ELSE 'Future'
--      END  AS category
--        FROM orders

-- ex UNION
-- SELECT CONCAT(first_name,' ',last_name), points , 'GOLDEN' FROM customers WHERE points>3000
-- UNION 
-- SELECT CONCAT(first_name,' ',last_name), points , 'SELVER' FROM customers WHERE points BETWEEN 2000 AND 3000
-- UNION 
-- SELECT CONCAT(first_name,' ',last_name), points , 'BRONZE' FROM customers WHERE points<2000

-- CASE WHEN THEN ELSE END
SELECT  CONCAT(first_name,' ',last_name), points ,
        CASE 
        WHEN points>3000 THEN 'GOLDEN'
         WHEN points BETWEEN 2000 AND 3000 THEN 'SELVER'
         ELSE'BRONZE' 
          END AS category
          FROM customers
          