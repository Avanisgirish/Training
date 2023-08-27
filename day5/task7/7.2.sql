DELIMITER //

CREATE PROCEDURE selectempl(IN p_id INT)
BEGIN
    SELECT UserID, FirstName, LastName, Email
    
    from empl
    where UserID = p_id;
END //

DELIMITER ;
 call selectempl(2);