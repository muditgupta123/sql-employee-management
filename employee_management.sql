
-- Create Employee table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    JoinDate DATE
);

-- Insert sample data
INSERT INTO Employees (EmpID, Name, Department, Salary, JoinDate) VALUES
(1, 'Alice', 'HR', 50000, '2020-01-15'),
(2, 'Bob', 'IT', 65000, '2019-03-22'),
(3, 'Charlie', 'Finance', 70000, '2021-07-10'),
(4, 'David', 'IT', 62000, '2022-11-05'),
(5, 'Eva', 'HR', 55000, '2023-02-28');

-- Query 1: List all employees
SELECT * FROM Employees;

-- Query 2: Employees with Salary > 60000
SELECT Name, Salary FROM Employees WHERE Salary > 60000;

-- Query 3: Count of employees in each department
SELECT Department, COUNT(*) AS DeptCount FROM Employees GROUP BY Department;

-- Query 4: Most recently joined employee
SELECT Name, JoinDate FROM Employees ORDER BY JoinDate DESC LIMIT 1;
