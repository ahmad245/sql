-- DELIMITER $$ 
-- CREATE PROCEDURE get_clients()
-- BEGIN 
 -- SELECT * FROM clients;
-- END $$
-- DELIMITER ;

DELIMITER $$ 
CREATE PROCEDURE get_invoices_with_balance()
BEGIN 
  SELECT * FROM incoices_with_balance WHERE balance > 0 ;
  END $$
  DELIMITER ;
  