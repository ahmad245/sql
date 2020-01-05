-- DROP VIEW balance;

CREATE OR REPLACE VIEW balance AS
SELECT c.client_id ,c.name, SUM(i.invoice_total - i.payment_total) AS balance
         From invoices i
         JOIN clients c
         USING(client_id)
         GROUP BY c.client_id
							