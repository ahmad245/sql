 -- AS data : alias is required
 USE sql_invoicing;
-- SELECT name,total_sales FROM (
-- SELECT  c.client_id ,c.name,
--		(SELECT SUM(invoice_total)  FROM invoices i WHERE i.client_id=c.client_id) AS total_sales,
--        (SELECT AVG(invoice_total) FROM invoices)  AS average
--        FROM  clients  c
-- ) AS data
 -- with WHERE condition
SELECT name,total_sales FROM (
SELECT  c.client_id ,c.name,
		(SELECT SUM(invoice_total)  FROM invoices i WHERE i.client_id=c.client_id) AS total_sales,
        (SELECT AVG(invoice_total) FROM invoices)  AS average
        FROM  clients  c
) AS data WHERE total_sales IS NOT NULL
  