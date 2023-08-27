
CREATE TABLE Empl (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL
);
CREATE TABLE Department (
   DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(255) NOT NULL,
    EmployeeID INT,
    FOREIGN KEY (EmployeeID) REFERENCES Empl(UserID)
);


INSERT INTO Empl (UserID,FirstName, LastName, Email)
VALUES
    (1,'priya', 'David', 'priya@gmail.com'),
    (2,'sara', 'jith', 'sara@gmail.com'),
    (3,'Miya', 'kaisar', 'miya@gmil.com'),
    (4,'Eleena', 'john','eleena@gmail.com');
INSERT INTO Department(DepartmentID , DepartmentName,  EmployeeID)
VALUES
(10,"cs",1),
(11,"EEE",2),
(12,"ECE",3),
(13,"civil",4);

SELECT Empl.UserID, Empl.FirstName, Empl.LastName, Empl.Email, Department.DepartmentName
FROM Empl
JOIN Department ON Empl.UserID = Department.EmployeeID;

