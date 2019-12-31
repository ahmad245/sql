USE sql_invoicing;
-- select all invoices larger than all invoices of client_id=3

-- subquery return single value 
-- SELECT * FROM invoices WHERE invoice_total > 
--        (SELECT MAX(invoice_total) FROM invoices WHERE client_id=3)

-- subquery return one or more values
 SELECT * FROM invoices WHERE invoice_total > ALL
       (SELECT invoice_total FROM invoices WHERE client_id=3)
        
     