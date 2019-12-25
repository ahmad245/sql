USE sql_store ;
-- join inner ,using alias , Joining Across Databases
-- join inner orders and customers while orders table contain customer_id 
-- SELECT order_id,state, customers.customer_id,orders.customer_id,first_name,last_name FROM orders JOIN customers ON orders.customer_id=customers.customer_id

-- using alias
 -- SELECT order_id,state, c.customer_id,o.customer_id,first_name,last_name FROM orders o JOIN customers c ON o.customer_id=c.customer_id

-- ex form order_items join with product 
-- SELECT o.order_id, p.name,quantity,p.unit_price FROM order_items o JOIN products p ON o.product_id=p.product_id 

-- Joining Across Databases
-- SELECT o.order_id,p.name FROM order_items o JOIN sql_inventory.products p ON o.product_id=p.product_id

