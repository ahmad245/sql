USE sql_invoicing;
-- CREATE VIEW sales_by_clients AS
-- SELECT c.client_id ,c.name ,SUM(i.invoice_total) AS total_sales
--        FROM clients c
--        JOIN invoices i
--        USING(client_id)
--        GROUP BY c.client_id

CREATE VIEW balance AS
SELECT c.client_id ,c.name, SUM(i.invoice_total - i.payment_total) AS balance
         From invoices i
         JOIN clients c
         USING(client_id)
         GROUP BY c.client_id
							