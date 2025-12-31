USE AdventureWorks2025;


SELECT * FROM Sales.SalesOrderHeader



SELECT
    SUM(TotalDue) AS TotalOrderSales,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth
FROM Sales.SalesOrderHeader
GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate)
ORDER BY OrderYear , OrderMonth;