--Stored procedure practice


create procedure select_Employees
as
begin
select * from Employee;
end

exec select_Employees;
--create database
create database sample_DB;
--switch to new database
use  sample_DB;
-- Create a new table named "Customers"
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ContactName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert some sample data into the Customers table
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES (1, 'Shubham', 'Thakur', 'India'),
       (2, 'Aman ', 'Chopra', 'Australia'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka'),
       (4, 'Aditya', 'Arpan', 'Austria'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain');


--select from customers
	select * from Customers;

-- Create a stored procedure named "GetCustomersByCountry"
CREATE PROCEDURE GetCustomersByCountry
    @Country VARCHAR(50)
AS
BEGIN
    SELECT CustomerName, ContactName
    FROM Customers
    WHERE Country = @Country;
END;

-- Execute the stored procedure with parameter "Sri lanka"
EXEC GetCustomersByCountry @Country = 'Sri lanka';
--Alter procedure
alter procedure GetCustomersByCountry
@CustomerID int,
@CustomerName varchar(50),
@ContactName varchar(50)
as 
begin
select @CustomerName=@CustomerName,@ContactName=@ContactName where @CustomerID=3
end
EXEC GetCustomersByCountry;


