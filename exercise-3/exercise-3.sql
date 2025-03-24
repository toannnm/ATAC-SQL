-- This query retrieves the list of products along with their category names and supplier names.
SELECT product.ProductName, category.CategoryName, supplier.CompanyName As 'SupplierName'
FROM Products product
JOIN Categories category ON product.CategoryID = category.CategoryID -- Joining the Products table with the 'Categories' table on the CategoryID column.
JOIN Suppliers supplier ON product.SupplierID = supplier.SupplierID; -- Joining the Products table with the 'Suppliers' table on the SupplierID column.

-- This second query retrieves all customers whose company name contains the word "Market".
SELECT *
FROM Customers
WHERE CompanyName LIKE '%Market%'; -- Filtering the customers whose company name contains the word "Market".