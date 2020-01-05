DROP PROCEDURE IF EXISTS get_client_by_state_with_default1;
DELIMITER $$ 
CREATE PROCEDURE get_client_by_state_with_default1(state CHAR(2))
BEGIN 
   IF state IS NULL THEN 
    SET state='CA';
   END IF; 
   SELECT * FROM clients c WHERE c.state=state;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS get_client_by_state_with_default2;
DELIMITER $$ 
CREATE PROCEDURE get_client_by_state_with_default2(state CHAR(2))
BEGIN 
  IF state IS NULL THEN 
     SELECT * FROM clients;
     ELSE 
      SELECT * FROM clients c WHERE c.state=state;
  END IF;    
  END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS get_client_by_state_with_default3;
DELIMITER $$ 
CREATE PROCEDURE get_client_by_state_with_default3(state CHAR(2))
BEGIN 

      SELECT * FROM clients c WHERE c.state=IFNULL(state,c.state);
 
  END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS get_payment_with_parameter;
DELIMITER $$ 
CREATE PROCEDURE get_payment_with_parameter(client_id INT ,payment_method_id TINYINT)
BEGIN 
 SELECT * FROM payments p WHERE p.client_id=IFNULL(client_id,p.client_id) AND 
                                p.payment_method=IFNULL(payment_method_id,p.payment_method) ;
END $$
DELIMITER ;