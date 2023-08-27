use shop;
DELIMITER //
CREATE PROCEDURE UpdateEmployee(
    IN p_id INT,
    IN p_firstName VARCHAR(255),
    IN p_lastName VARCHAR(255),
    IN p_email VARCHAR(255)
)
BEGIN
    UPDATE Employees
    SET FirstName = p_firstName, LastName = p_lastName, Email = p_email
    WHERE UserID = p_id;
END //

DELIMITER ;

call UpdateEmployee(2,"dhanya","varma","dhanu@gmail.com")