--This SQL query retrieves a list of customers who have not placed any orders
SELECT customer.CustomerID, customer.CompanyName
FROM Customers customer
LEFT JOIN Orders [order] ON customer.CustomerID = [order].CustomerID -- Joins the Customers table with the Orders table on CustomerID.
WHERE [order].OrderID IS NULL; -- Filters the results to only include customers who have not placed any orders.
--order is a reversed keyword in SQL, so it is enclosed in square brackets to avoid conflicts with the reserved keyword.

--This SQL query retrieves a list of customers who have placed orders, along with the total amount spent by each customer. The results are ordered by the total amount spent in descending order, and only the top customer is returned.
SELECT customer.CompanyName, SUM(orderDetails.UnitPrice * orderDetails.Quantity) AS TotalSpent
FROM Customers customer
JOIN Orders [order] ON customer.CustomerID = [order].CustomerID -- Joins the Orders table with the Customers table on CustomerID.
JOIN "Order Details" orderDetails ON [order].OrderID = orderDetails.OrderID --Joins the Order Details table with the Orders table on OrderID.
GROUP BY customer.CompanyName --Groups the results by customer name.
ORDER BY TotalSpent DESC --Orders the results by total amount spent in descending order.
LIMIT 1; --Limits the results to the top customer who spent the most.
--order is a reversed keyword in SQL, so it is enclosed in square brackets to avoid conflicts with the reserved keyword.