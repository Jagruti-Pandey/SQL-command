CREATE TABLE Emmm(
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);
INSERT INTO Emmm (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);
select * from Emmm;
select * from Emmm where FirstName like 'J%';
select * from Emmm where LastName like '%n';
select Email from Emmm where Email like '%John%';
select FirstName from Emmm where FirstName like '_____';
select LastName from Emmm where LastName like '_a%';
