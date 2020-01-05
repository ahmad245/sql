-- we want classify orders table to 2 category active  if the order_date in current year  or archive 
-- using union or if 

USE sql_store;
-- union 
-- SELECT order_id , order_date ,'active' AS category FROM orders  WHERE YEAR(order_date) = YEAR(NOW())-1
-- UNION 
-- SELECT order_id , order_date ,'archive' AS category FROM orders  WHERE YEAR(order_date) < YEAR(NOW())-1

-- IF (condition , return value , else return other value)
-- SELECT order_id , order_date, IF( YEAR(order_date)=YEAR(NOW())-1 , 'active','archive')   FROM orders

-- ex2
-- SELECT DISTINCT product_id,p.name ,
--               (SELECT COUNT(product_id) FROM order_items WHERE product_id=o.product_id) AS orders,
--               if((SELECT COUNT(product_id) FROM order_items WHERE product_id=o.product_id)>1,'Many times','once') AS frequency
--               FROM order_items o
--               JOIN products p
--             USING(product_id)


SELECT name, p.product_id, COUNT(p.product_id) ,
                if(COUNT(p.product_id) >1,'Many times','once') AS frequency
               FROM products p
               JOIN order_items o
               USING(product_id)
             GROUP BY p.product_id
