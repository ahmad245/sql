USE sql_store;

-- CROSS JOIN to combin evry record  from the first table with evry record with second table  
-- 4 ,5 the same

-- SELECT c.first_name , p.name FROM customers c CROSS JOIN products p
-- SELECT c.first_name , p.name FROM customers c , products p

-- SELECT sh.name as shipper , p.name as product FROM shippers sh CROSS JOIN  products p
-- SELECT sh.name as shipper , p.name as product FROM shippers sh ,products p