
-- count is ignore the null records 
-- SELECT MAX(invoice_total) AS highest,
--       MIN(invoice_total) AS lowest,
--       SUM(invoice_total) AS total,
--       SUM(invoice_total * 1.1) AS 'total with value',
--       AVG(invoice_total) AS average,
--       COUNT(invoice_total) AS number_of_invoices,
--       COUNT(payment_date) AS count_of_payment,
--       COUNT(*) AS total_of_record,
--       COUNT(DISTINCT client_id)
-- FROM invoices
-- WHERE invoice_date > '2019-07-01'       
USE sql_invoicing;
SELECT 'First half of 2019' AS date_range ,
       SUM(invoice_total) AS total_sales,
       SUM(payment_total) AS total_payment,
       SUM(invoice_total - payment_total) AS what_we_expect
       FROM invoices 
       WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION 
SELECT 'Second half of 2019' AS date_range ,
       SUM(invoice_total) AS total_sales,
       SUM(payment_total) AS total_payment,
       SUM(invoice_total - payment_total) AS what_we_expect
       FROM invoices 
       WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION        
SELECT 'total' AS date_range ,
       SUM(invoice_total) AS total_sales,
       SUM(payment_total) AS total_payment,
       SUM(invoice_total - payment_total) AS what_we_expect
       FROM invoices 
       WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31';

