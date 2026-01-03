USE AdventureWorks2025;



SELECT * FROM Production.Product
SELECT * FROM Sales.SalesOrderDetail

SELECT TOP 10
    p.Name AS ProductName,
    SUM(sod.LineTotal) AS TotalSales
FROM Production.Product p 
INNER JOIN Sales.SalesOrderDetail sod ON p.ProductID = sod.ProductID
GROUP BY p.Name
ORDER BY TotalSales DESC;