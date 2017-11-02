==================================================
1) MYSQL Trigger Basic Syntax
==================================================


DROP TRIGGER IF EXISTS 'newtrigger'
DELIMITER $$
CREATE TRIGGER 'newtrigger' BEFORE INSERT ON 'users' FOR EACH ROW 
BEGIN
  DECLARE new_name VARCHAR(50);
  DECLARE new_mobile VARCHAR(50);
    
      Select name,mobile into new_name,new_mobile from users where id = 2;
        SET NEW.`name` := new_name;
        SET NEW.`mobile` := new_mobile;
END
$$
DELIMITER ;

==================================================
1) MYSQL Trigger IF Syntax
==================================================

DROP TRIGGER IF EXISTS 'newtrigger'
DELIMITER $$
CREATE TRIGGER 'newtrigger' BEFORE INSERT ON 'users' FOR EACH ROW 
BEGIN
  DECLARE new_name VARCHAR(50);
  DECLARE new_mobile VARCHAR(50);
    
      Select name,mobile into new_name,new_mobile from users where id = 1;
        

       IF(new_name = 'akash') THEN
       		SET NEW.`name` := new_name;
        	SET NEW.`mobile` := new_mobile;
       ELSE
       		SET NEW.`name` := 'new akash';
        	SET NEW.`mobile` := '1234567890';
       END IF;
END
$$
DELIMITER ;