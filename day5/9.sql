DELIMITER //

CREATE PROCEDURE CRUD_Employee(
    IN p_id INT,
    IN p_firstName VARCHAR(255),
    IN p_lastName VARCHAR(255),
    IN p_email VARCHAR(255),
    IN p_process VARCHAR(10)
)
BEGIN
    IF p_process = 'create' THEN
        INSERT INTO Employees (UserID, FirstName, LastName, Email)
        VALUES (p_id, p_firstName, p_lastName, p_email);
        
    ELSEIF p_process = 'read' THEN
        SELECT UserID, FirstName, LastName, Email
        FROM Employees
        WHERE UserID = p_id;
        
    ELSEIF p_process = 'update' THEN
        UPDATE Employees
        SET FirstName = p_firstName, LastName = p_lastName, Email = p_email
        WHERE UserID = p_id;
        
    ELSEIF p_process = 'delete' THEN
        DELETE FROM Employees
        WHERE UserID = p_id;
        
    ELSE
        SELECT 'Invalid action' AS Message;
        
    END IF;
END //

DELIMITER ;

call emplCRUD(1,NULL,NULL,'delete')
