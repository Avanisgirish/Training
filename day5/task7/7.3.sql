DELIMITER //


CREATE PROCEDURE DeleteEmployee(IN p_id INT)
BEGIN
    DELETE FROM Empl
    WHERE UserID = p_id;
END //

DELIMITER ;
call DeleteEmploye(1);