USE Northwind;

-- RETREIVING RECORDS FROM SHIPPERS

SELECT * FROM Shippers;

-- SORTS USING ORDER BY
-- RETRIEVES LIST OF CUSTOMERS SORTED BY COUNTRY AND CONTACT NAME
SELECT TOP 5 ContactName, Country, Phone FROM Customers ORDER BY Country, ContactName;

--FILTER RECORDS TO ONBLY SEE ONE CUSTOMERS ORDER

SELECT CustomerID, OrderDate, ShipCity FROM Orders
WHERE CustomerID = 'ALFKI'

-- RETRIEVE RECORDS FROM TWO TABLES AT ONCE
-- JOIN TO RETRIEVE DATA FROM Customers and Orders

SELECT TOP 5 c.CompanyName, o.OrderDate FROM Customers AS c JOIN Orders as o ON c.CustomerID = o.CustomerID
WHERE c.CompanyName = 'QUICK-Stop';

-- Add a record to the database
-- using insert statement
INSERT INTO Customers (CustomerID, ContactName, CompanyName, Country)
VALUES('ALICE', 'Alice Johnson', 'Wonderful Widgets', 'USA');

-- Check if record was added

SELECT * FROM Customers WHERE CustomerID = 'ALFKI';

-- use the update statement to update data

UPDATE Customers SET ContactName = 'Maria Anders'
WHERE CustomerID = 'ALFKI';

-- DELETE Statements remove records from database

DELETE FROM Orders WHERE OrderID = 10248;
DELETE FROM [Order Details] WHERE OrderID = 10248;