-- select clients that have invoice
USE sql_invoicing;

-- using subquery this subquery will return all data and compair them  
-- SELECT * FROM clients WHERE client_id IN (SELECT client_id FROM invoices)

-- using JOIN
-- SELECT DISTINCT c.client_id FROM clients c JOIN invoices i USING(client_id)

-- using exists  subquery will return data with condition c.client_id=i.client_id but not all data this usefull for performance  
-- SELECT * FROM clients c WHERE EXISTS (SELECT client_id FROM invoices i WHERE c.client_id=i.client_id )

-- find the products that never been ordered
USE sql_store;
-- SELECT * FROM products p WHERE product_id NOT IN (SELECT product_id FROM order_items )
-- SELECT * FROM products p WHERE NOT EXISTS (SELECT product_id FROM order_items o WHERE p.product_id=o.product_id) 
