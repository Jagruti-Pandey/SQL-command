CREATE TABLE Emppp (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Emppp(EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);
INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');
select * from Emppp;
select * from Department;
select E.FirstName,D.DepartmentName
from Emppp E join Department D 
on E.DepartmentID=D.DepartmentID;
select D.DepartmentName,E.FirstName
from  Department D left join Emppp E
on D.DepartmentID=E.DepartmentID;
select E.FirstName
from Emppp E left join Department D
on E.DepartmentID=D.DepartmentID
where D.DepartmentID is null;
select E.FirstName,E.LastName
from Emppp E
join Emppp E2
on E.DepartmentID=E2.DepartmentID
where E2.FirstName='Jane' and E2.LastName='Doe'
and E2.EmployeeID<>E.EmployeeID;
select D.DepartmentName
from  Department D
 join Emppp E
 on D.DepartmentID=E.DepartmentID
 group by DepartmentName
 order by sum(E.Salary) desc limit 1;