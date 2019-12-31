-- create copy of table orsers but mysql is ignore the attributes PK AI , you have to make PK and AI manually 
-- SELECT * FROM orders is subquery
CREATE TABLE orders_copy AS SELECT * FROM orders