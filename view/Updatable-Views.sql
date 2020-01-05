-- if view dont have DISTINCT , Aggregate function(max,min,sum,...) , GROUP BY ,HAVING ,UNION 
USE sql_invoicing;
-- CREATE VIEW incoices_with_balance AS
-- SELECT invoice_id,
--   number,
--    client_id,
--   invoice_total,
--   payment_total,
--   invoice_total-payment_total AS balance,
--   invoice_date,
--   due_date,
--   payment_date
--   FROM invoices
--   WHERE (invoice_total-payment_total) > 0
   
   
 -- DELETE FROM VIEW  
 -- DELETE FROM  incoices_with_balance WHERE invoice_id=1
   
-- UPDATE
-- UPDATE incoices_with_balance SET due_date=DATE_ADD(due_date,INTERVAL 2 DAY)