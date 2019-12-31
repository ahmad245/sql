-- USE sql_invoicing;

-- subquery return one record using = operator
-- UPDATE invoices  SET payment_total =invoice_total , payment_date=due_date
-- WHERE client_id = 
-- (SELECT client_id FROM clients WHERE name='Myworks') 

-- subquery return more  record using IN operator
-- UPDATE invoices  SET payment_total =invoice_total , payment_date=due_date
-- WHERE client_id IN 
-- (SELECT client_id FROM clients WHERE state IN ('ca','ny')) 

-- ex update coment from  the orders table Where the customer has more 3000 points and set the comments 'GOLDEN'
USE sql_store;
 UPDATE orders SET comments='GOLDEN' 
 WHERE customer_id IN (
SELECT customer_id FROM customers WHERE points > 3000
 )


 