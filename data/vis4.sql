USE AdventureWorks2025;


SELECT * FROM Sales.SalesOrderHeader



SELECT
    SUM(TotalDue) AS TotalOrderSales,
    COUNT(SalesOrderID) AS OrderCount,
    YEAR(OrderDate) AS OrderYear
FROM Sales.SalesOrderHeader
GROUP BY
    YEAR(OrderDate)
ORDER BY OrderYear;