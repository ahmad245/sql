USE sql_store;
-- outer join : LEFT , RIGHT, outer join with multipe table
-- SELECT c.customer_id , c.first_name,o.order_id FROM customers c  JOIN orders o ON c.customer_id=o.customer_id

-- LEFT return all row form left table : (customer) event if not customer_id in orders table
-- SELECT c.customer_id , c.first_name,o.order_id FROM customers c LEFT JOIN orders o ON c.customer_id=o.customer_id ORDER BY c.customer_id

-- RIGHT the same result as befor return all row form right table : (customer)  but :FROM  orders o  RIGHT JOIN customers c
-- SELECT c.customer_id , c.first_name,o.order_id FROM  orders o  RIGHT JOIN customers c ON c.customer_id=o.customer_id ORDER BY c.customer_id

-- ex  12 and 13 the same
-- SELECT p.product_id,p.name,oi.quantity FROM order_items oi RIGHT JOIN products p ON oi.product_id=p.product_id 
-- SELECT p.product_id,p.name,oi.quantity FROM products p  LEFT JOIN order_items oi  ON oi.product_id=p.product_id 

-- ex  multipe table
-- SELECT c.customer_id , c.first_name,o.order_id ,s.name
--             FROM customers c 
--                   LEFT JOIN orders o ON c.customer_id=o.customer_id
--                   LEFT JOIN shippers s ON o.shipper_id =s.shipper_id

-- ex  multipe table
-- SELECT o.order_date,o.order_id,c.first_name,sh.name as shipper,os.name
--       FROM orders o 
--        LEFT JOIN customers c ON o.customer_id=c.customer_id
--        LEFT JOIN shippers sh ON o.shipper_id=sh.shipper_id
--        LEFT JOIN order_statuses os ON os.order_status_id=o.status
        
       
       
       
       
       