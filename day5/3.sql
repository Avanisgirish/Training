CREATE DATABASE college;
USE college;
CREATE TABLE Emp (
    EmployeeID int primary key,
    Name VARCHAR(50),
	Deptid int ,
    deptname varchar(50),
    salary int
);
alter table emp rename column deptname to Deptname;



INSERT INTO Emp(EmployeeID,Name, Deptid,Deptname,Salary)
VALUES
    (1, 'Deepa', 10, 'cs', 80000),
    (2, 'rahul', '11', 'Mech', 70000),
    (3, 'Sarath', '12', 'EEE', 90000),
    (4, 'Diya', '13', 'civil', 60000),
    (5, 'david', '14', 'cs', 70000),
    (6, 'akhil', '15', 'EEE', 75000),
    (12, 'Anupama', '16', 'ECE', 72000);

-- fetching the second highest salary from emp table

select max(salary) from emp where salary<(select max(salary) from emp);
