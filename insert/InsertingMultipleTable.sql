-- orders table is parent order_items is child : orders table has one or more order_items 
-- last_insert_id() :function in mysql 
INSERT INTO orders (customer_id,order_date,status) VALUES(1,'2019-01-02',1);
-- last_insert_id() is the id of orders
INSERT INTO order_items VALUES(last_insert_id(),1,1,2.95),(last_insert_id(),2,1,3.95)