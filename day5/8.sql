
-- Create Procedure: Create or Update an Employee
DELIMITER //

-- Create Procedure: Create or Update an Employee
CREATE PROCEDURE insertempl(
    IN p_id INT,
    IN p_firstName VARCHAR(255),
    IN p_lastName VARCHAR(255),
    IN p_email VARCHAR(255)
)
BEGIN
    -- Check if the employee already exists
    IF EXISTS (SELECT * FROM Empl WHERE UserID = p_id) THEN
        -- Update existing employee
        UPDATE Empl
        SET FirstName = p_firstName, LastName = p_lastName, Email = p_email
        WHERE UserID = p_id;
    ELSE
        -- Insert new employee
        INSERT INTO Empl (UserID, FirstName, LastName, Email)
        VALUES (p_id, p_firstName, p_lastName, p_email);
    END IF;
END //
DELIMITER //

CREATE PROCEDURE GetEmployeeByID(IN p_id INT)
BEGIN
    SELECT UserID, FirstName, LastName, Email
    FROM Employees
    WHERE UserID = p_id;
END //

DELIMITER ;


CALL insertempl(1, 'John', 'Doe', 'john@example.com');



