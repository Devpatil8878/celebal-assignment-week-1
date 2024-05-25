SELECT DISTINCT c.CustomerID, p.FirstName, p.LastName
FROM Sales.Customer AS c
JOIN Person.Person AS p ON c.PersonID = p.BusinessEntityID
JOIN Sales.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
JOIN Sales.SalesOrderDetail AS sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product AS prod ON sod.ProductID = prod.ProductID
JOIN Person.Address AS a ON p.BusinessEntityID = a.BusinessEntityID
WHERE a.City = 'London' AND prod.Name = 'Chai';
