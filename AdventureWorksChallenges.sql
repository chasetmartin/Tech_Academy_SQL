SELECT TOP 10 FirstName FROM Person.Person;

SELECT ListPrice FROM Production.Product;

SELECT MIN(ListPrice) FROM Production.Product AS SMALLPRICE;

SELECT MAX(ListPrice) FROM Production.Product AS LARGEPRICE;

SELECT Name FROM Purchasing.Vendor
WHERE Name LIKE '%bicycle_%';

SELECT Name FROM Purchasing.Vendor
WHERE Name LIKE '[a-c]%';

SELECT ListPrice FROM Production.Product WHERE ListPrice BETWEEN 100 AND 1000;