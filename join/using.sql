USE sql_store;

SELECT o.order_id,c.first_name
   FROM orders o 
        LEFT JOIN customers c 
		     USING(customer_id)