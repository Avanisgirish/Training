create database shop;
use shop;
create table employee
(empid int,
empname varchar(20),
salary int,
deptid int);
insert into employee values(1,"Anil",50000,10);
insert into employee values(2,"deepak",60000,11);
insert into employee values(3,"Anu",50000,12);
insert into employee values(4,"priya",70000,13);
insert into employee values(5,"sarath",65000,14);
insert into employee values(6,"Ani",50000,10);
insert into employee values(7,"deepa",55000,12);
insert into employee values(8,"riya",70000,13);
create table departement
(deptid int,
deptname varchar(20),
empcount int,
 Ranking int);
insert into  departement values(10,"cs",2,1);
insert into  departement values(12,"EEE",2,3);
insert into  departement values(13,"ECE",2,2);
insert into  departement values(14,"civil",1,4);
-- innerjoin
select employee.empid, employee.empname,departement.deptname from employee inner join departement on employee.deptid=departement.deptid;
-- outerjoin 
select employee.empid, employee.empname,departement.deptname from employee full join  departement on employee.deptid=departement.deptid;
-- left outer join
select employee.empid, employee.empname,departement.deptname from employee left outer  join  departement on employee.deptid=departement.deptid;
-- right outer join
select employee.empid, employee.empname,departement.deptname from employee right outer join  departement on employee.deptid=departement.deptid;






