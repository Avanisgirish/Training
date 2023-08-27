use college;
select * from emp;
update emp set Deptid=10 where EmployeeID=5;
update emp set Deptid=12 where EmployeeID=6;
SELECT Deptname, COUNT(EmployeeID) AS EmpCount FROM emp GROUP BY Deptname;

