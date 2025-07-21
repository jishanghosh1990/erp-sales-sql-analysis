-- 1. Total sales by product
SELECT p.ProductName, SUM(o.Quantity * p.Price) AS TotalSales
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY p.ProductName;

-- 2. Customers with unpaid orders
SELECT c.CustomerName, COUNT(*) AS UnpaidOrders
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.PaymentStatus = 'Unpaid'
GROUP BY c.CustomerName;

-- 3. Monthly sales summary
SELECT strftime('%Y-%m', OrderDate) AS Month, SUM(Quantity * Price) AS MonthlySales
FROM Orders o
JOIN Products p ON o.ProductID = p.ProductID
GROUP BY Month;
