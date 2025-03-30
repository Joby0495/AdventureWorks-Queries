-- Task 3a: Person details with email and phone
SELECT P.*, E.EmailAddress, PP.PhoneNumber, PT.Name AS PhoneNumberType
FROM Person.Person P
LEFT JOIN Person.EmailAddress E ON P.BusinessEntityID = E.BusinessEntityID
LEFT JOIN Person.PersonPhone PP ON P.BusinessEntityID = PP.BusinessEntityID
LEFT JOIN Person.PhoneNumberType PT ON PP.PhoneNumberTypeID = PT.PhoneNumberTypeID;

-- Task 3b: Sales header orders from May 2011
SELECT *
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011 AND MONTH(OrderDate) = 5;

-- Task 3c: Sales details from May 2011
SELECT SD.*
FROM Sales.SalesOrderDetail SD
JOIN Sales.SalesOrderHeader SH ON SD.SalesOrderID = SH.SalesOrderID
WHERE YEAR(SH.OrderDate) = 2011 AND MONTH(SH.OrderDate) = 5;

-- Task 3d: Total sales in May 2011
SELECT SUM(SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011 AND MONTH(OrderDate) = 5;

-- Task 3e: Total sales in 2011 by month
SELECT MONTH(OrderDate) AS MonthNumber, DATENAME(month, OrderDate) AS MonthName, SUM(SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2011
GROUP BY MONTH(OrderDate), DATENAME(month, OrderDate)
ORDER BY TotalSales ASC;

-- Task 3f: Total sales to Gustavo Achong
SELECT SUM(SH.SubTotal) AS TotalSales
FROM Sales.SalesOrderHeader SH
JOIN Sales.Customer C ON SH.CustomerID = C.CustomerID
JOIN Person.Person P ON C.PersonID = P.BusinessEntityID
WHERE P.FirstName = 'Gustavo' AND P.LastName = 'Achong';
