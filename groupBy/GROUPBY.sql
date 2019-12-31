-- SELECT SUM(invoice_total) AS total,client_id 
-- FROM invoices
-- GROUP BY client_id

-- the order classes  is important 
-- SELECT SUM(invoice_total) AS total,client_id 
-- FROM invoices
-- WHERE invoice_date <= '2019-07-01'
-- GROUP BY client_id
-- ORDER BY total DESC

-- the order classes  is important 
-- SELECT SUM(invoice_total) AS total,client_id ,c.city,c.state
--        FROM invoices i
--      JOIN clients c
--      USING(client_id)
--      GROUP BY c.city ,c.state

-- ex very important  40 num of video
SELECT SUM(amount) ,date ,pm.name
       FROM payments p
        JOIN payment_methods pm
       ON p.payment_method=pm.payment_method_id
       GROUP BY date , payment_method
       ORDER BY date
