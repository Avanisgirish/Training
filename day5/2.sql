create database tigersclub;
use tigersclub;
CREATE TABLE Users (
    ID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Email VARCHAR(200),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(200),
    City VARCHAR(100),
    State VARCHAR(50),
	Username VARCHAR(20),
	Password VARCHAR(50)
);