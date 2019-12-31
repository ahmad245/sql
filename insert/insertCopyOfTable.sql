-- INSERT INTO orders_copy SELECT * FROM orders WHERE order_date < '2019-01-01';
USE sql_invoicing;
CREATE TABLE invoices_copy AS
SELECT i.invoice_id, i.number,c.name as clinet ,i.invoice_total ,i.payment_total,i.invoice_date,i.due_date,i.payment_date
 FROM invoices i JOIN clients c ON i.client_id=c.client_id 
 WHERE i.payment_date IS NOT NULL