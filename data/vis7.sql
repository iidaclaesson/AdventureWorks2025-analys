USE AdventureWorks2025;

SELECT * FROM Sales.SalesTerritory
SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.Customer
SELECT * FROM Sales.Store


SELECT
    st.Name AS Territory,
    CASE
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        WHEN c.PersonID IS NOT NULL THEN 'Individual'
    END AS CustomerType,
    SUM(soh.TotalDue) / COUNT(DISTINCT soh.SalesOrderID) AS AverageOrderValue
FROM Sales.SalesOrderHeader soh
INNER JOIN Sales.SalesTerritory st  ON soh.TerritoryID = st.TerritoryID
INNER JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
LEFT JOIN Sales.Store s ON c.StoreID = s.BusinessEntityID
GROUP BY st.Name,
    CASE
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        WHEN c.PersonID IS NOT NULL THEN 'Individual'
    END
ORDER BY AverageOrderValue DESC;
