-- WITH ROLLUP add column with sum of each group
USE sql_invoicing;
-- SELECT SUM(invoice_total) AS total_sales, client_id
--     FROM invoices
--       GROUP BY client_id
--       WITH ROLLUP

-- ex
-- SELECT SUM(invoice_total) AS total_sales, client_id,state ,city
--       FROM invoices
--       JOIN clients 
--       USING(client_id)
--       GROUP BY state,city
--       WITH ROLLUP

-- ex payment_method : cash creditCard , total : 10 ,351 ,361

SELECT pm.name,SUM(p.amount)
      FROM payment_methods pm
      JOIN payments p  
      ON pm.payment_method_id=p.payment_method
      GROUP BY  pm.name
      WITH ROLLUP