CREATE TABLE Employ (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employ (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);
select *  from Employ; 
select FirstName
from Employ 
where Salary>(select avg(Salary) from Employ);
select FirstName,DepartmentID
from Employ 
where HireDate >(select min(HireDate) from Employ);
select * from Employ
where Salary=(select max(Salary) from Employ);
select FirstName from Employ
where DepartmentID=(select DepartmentID from Employ where FirstName='John')
and FirstName!='John';
SELECT FirstName
from Employ
where DepartmentID not in(select 
 DepartmentID from Employ
group by DepartmentID 
order by avg(Salary) desc) limit 1;