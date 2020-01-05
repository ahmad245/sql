DROP PROCEDURE IF EXISTS make_payment_with_validation;
DELIMITER $$ 
CREATE PROCEDURE make_payment_with_validation(invoice_id INT,payment_amount DECIMAL(9,2),payment_date DATE)
BEGIN
  IF  payment_amount <= 0 THEN 
     SIGNAL SQLSTATE '22003' SET MESSAGE_TEXT ='Invalid payment amount' ;
 END IF; 
  UPDATE invoices i set i.payment_total=payment_amount ,i.payment_date=payment_date 
                    WHERE i.invoice_id=invoice_id ;
END $$
DELIMITER ;
                                                                                                                   