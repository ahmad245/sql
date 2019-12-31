-- delete every record 
-- DELETE FROM invoices

-- delete record
-- DELETE FROM invoices WHERE invoice_id=1

-- delete using subquery 
 -- DELETE FROM invoices WHERE client_id= (SELECT clinet_id from clients WHERE name='ahmad')   