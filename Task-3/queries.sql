USE northwind;

/* 1. Select Basic Data */
SELECT CustomerID, CompanyName, Country FROM customers;

/* 2. WHERE + ORDER BY */
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice > 20
ORDER BY UnitPrice DESC;

/* 3. GROUP BY */
SELECT Country, COUNT(*) AS TotalCustomers
FROM customers
GROUP BY Country;

/* 4. INNER JOIN */
SELECT o.OrderID, o.OrderDate, c.CompanyName, c.Country
FROM orders o
INNER JOIN customers c ON o.CustomerID = c.CustomerID;

/* 5. LEFT JOIN */
SELECT o.OrderID, p.ProductName, od.Quantity, od.UnitPrice
FROM orders o
LEFT JOIN order_details od ON o.OrderID = od.OrderID
LEFT JOIN products p ON od.ProductID = p.ProductID;

/* 6. Subquery */
SELECT ProductID, ProductName, UnitPrice
FROM products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM products);

/* 7. ARPU */
SELECT 
    SUM(od.UnitPrice * od.Quantity) /
    COUNT(DISTINCT o.CustomerID) AS ARPU
FROM orders o
JOIN order_details od ON o.OrderID = od.OrderID;

/* 8. Create View */
CREATE VIEW customer_revenue AS
SELECT 
    c.CustomerID,
    c.CompanyName,
    SUM(od.UnitPrice * od.Quantity) AS TotalRevenue
FROM customers c
LEFT JOIN orders o ON c.CustomerID = o.CustomerID
LEFT JOIN order_details od ON o.OrderID = od.OrderID
GROUP BY c.CustomerID, c.CompanyName;

/* 9. Optimization */
CREATE INDEX idx_orders_customer ON orders(CustomerID);
CREATE INDEX idx_orderdetails_product ON order_details(ProductID);
