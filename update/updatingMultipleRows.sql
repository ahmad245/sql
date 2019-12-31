-- UPDATE invoices SET payment_total=invoice_total * 0.5 , payment_date=due_date WHERE client_id=3
-- UPDATE invoices SET payment_total=invoice_total * 0.5 , payment_date=due_date WHERE client_id in(3,4)

-- USE sql_store;
-- UPDATE customers SET points=points+50 WHERE birth_date < '1990-01-01'