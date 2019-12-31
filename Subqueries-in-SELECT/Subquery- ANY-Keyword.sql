-- select clients with at least two invoices
-- =ANY => IN
USE sql_invoicing;

-- using JOIN
-- SELECT COUNT(invoice_id) AS invoice_total,i.client_id  ,c.name
--                        FROM invoices i
--                        JOIN clients c 
--						  USING(client_id)
--                        GROUP BY client_id 
--                        HAVING invoice_total>=2
 
 -- USING subquery
 -- SELECT * FROM clients WHERE client_id IN(
-- SELECT client_id  
--		FROM invoices 
--		GROUP BY client_id 
--		HAVING COUNT(invoice_id)>=2)
  
  -- USING subquery AND ANY KEYWORD
 SELECT * FROM clients WHERE client_id = ANY(
 SELECT client_id  
		FROM invoices 
		GROUP BY client_id 
		HAVING COUNT(invoice_id)>=2)
                        
        
