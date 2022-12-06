CREATE PROCEDURE dbo.uspGetAddress3 @City NVARCHAR(30), @PostalCode NVARCHAR(10)
AS
SELECT * FROM Person.Address
WHERE City LIKE @City + '%' AND PostalCode LIKE @PostalCode
GO
EXEC dbo.uspGetAddress3 @City = 'New', @PostalCode = '[98]%'
