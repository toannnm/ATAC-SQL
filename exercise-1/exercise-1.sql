-- This SQL query is used to retrieve specific columns from a table named Products
-- When this query is executed, it will return a result set containing the ProductName, UnitPrice, and UnitsInStock columns for all rows in the Products table.
SELECT ProductName,UnitPrice,UnitsInStock FROM Products

-- This SQL query retrieves all columns for orders from the Orders table where the order date is in the year 1997. 
SELECT * 
FROM Orders
WHERE strftime('%Y', OrderDate) = '1997' -- The strftime function is used to extract the year from the OrderDate column and compare it to '1997'.
