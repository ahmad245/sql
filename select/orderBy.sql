USE sql_store ;
-- ORDER BY , ORDER BY name-column , ORDER BY name-column DESC ,  ORDER BY name-column1,name-column2 :if the name-column1 has the same charchachter will sort by name-column2


-- SELECT * FROM customers ORDER BY first_name
-- SELECT * FROM customers ORDER BY first_name DESC
-- SELECT * FROM customers ORDER BY first_name,last_name
 -- SELECT * FROM customers ORDER BY state DESC,first_name
 
 -- state is not in select but is work in mysql
  -- SELECT first_name,last_name FROM customers ORDER BY state DESC
  
  SELECT * , quantity * unit_price as totalPrice FROM order_items WHERE order_id=2 ORDER BY totalPrice DESC