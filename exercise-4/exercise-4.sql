-- This query updates the unit price of all products in the "Beverages" category by increasing it by 10%.
UPDATE Products
SET UnitPrice = UnitPrice * 1.10 -- Sets the UnitPrice to 110% of its current value (increases by 10%).
WHERE CategoryID = (
    SELECT CategoryID
    FROM Categories
    WHERE CategoryName = 'Beverages' -- The subquery retrieves the CategoryID for "Beverages" from the 'Categories' table.
);

-- This query inserts a new product named "Organic Coffee" into the Products table, assigning it to the "Beverages" category, with a specified price and stock quantity, and a supplier chosen randomly.
INSERT INTO Products 
(
    ProductName, 
    SupplierID, 
    CategoryID, 
    UnitPrice, 
    UnitsInStock
)
VALUES 
(
    'Organic Coffee', -- 'Organic Coffee' as the ProductName.
    (SELECT SupplierID FROM Suppliers LIMIT 1), -- Randomly selects a SupplierID from the 'Suppliers' table.
    (
    SELECT CategoryID 
    FROM Categories 
    WHERE CategoryName = 'Beverages' -- The CategoryID for "Beverages" retrieved from the 'Categories' table.
    ),
    25.00, -- Unit price of the product.    
    100 -- Units in stock for the product.
);

