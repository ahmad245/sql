USE sql_invoicing;
-- SELECT invoice_id ,
--      invoice_total,
--     (SELECT AVG(invoice_total) AS average FROM invoices ),
--     invoice_total-(SELECT AVG(invoice_total) FROM invoices ) 
--     FROM invoices 
  
  SELECT  c.client_id ,c.name,
		(SELECT SUM(invoice_total) FROM invoices i WHERE i.client_id=c.client_id) ,
        (SELECT AVG(invoice_total) FROM invoices) 
        FROM  clients  c
       