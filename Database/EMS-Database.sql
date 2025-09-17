-- Departments Table
CREATE TABLE Departments (
    DepartmentId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL UNIQUE,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);

-- Roles Table
CREATE TABLE Roles (
    RoleId INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(50) NOT NULL UNIQUE,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME()
);  

-- Employees Table
CREATE TABLE Employees (
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(100) NOT NULL,
    LastName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    Phone NVARCHAR(50) NULL,
    DateOfBirth DATE NULL,
    HireDate DATE NOT NULL,
    Address NVARCHAR(255) NULL,
    Salary DECIMAL(18,2) NULL,
    DepartmentId INT NOT NULL,
    ManagerId INT NULL,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    IsActive BIT NOT NULL DEFAULT 1,
    FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId),
    FOREIGN KEY (ManagerId) REFERENCES Employees(EmployeeId)
);

-- Users Table
CREATE TABLE Users (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(100) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    EmployeeId INT NULL,
    IsActive BIT NOT NULL DEFAULT 1,
    CreatedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId)
);

-- UserRoles Table
CREATE TABLE UserRoles (
    UserId INT NOT NULL,
    RoleId INT NOT NULL,
    AssignedAt DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
    PRIMARY KEY (UserId, RoleId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
);



-- Insert Departments
INSERT INTO Departments (Name) VALUES
('Engineering'),
('Human Resources'),
('Sales')


INSERT INTO Roles (Name) VALUES
('Admin'),
('Employee');


INSERT INTO Employees (FirstName, LastName, Email, Phone, DateOfBirth, HireDate, Address, Salary, DepartmentId)
VALUES 
('Akhilesh', 'Singh', 'singhaman1278@gmail.com', '9990227112', '2001-05-17', '2025-05-17', 'Noida sector 44', 95000, 1),
('Rahul', 'Kumar', 'rahulkp8437@gmail.com', '9990227112', '2001-05-17', '2025-05-17', 'Noida sector 44', 95000, 2);


INSERT INTO Users (Username, PasswordHash, EmployeeId)
VALUES
('akhilsingh', 'akhil', 1),
('rahulkumar', 'rahul', 2)



INSERT INTO UserRoles (UserId, RoleId) VALUES
(1, 1),
(2, 2)



