USE RetailBankingSample

SELECT C.CustomerID, C.FirstName, C.LastName
FROM Customer AS C
WHERE LastName LIKE 'A%';

SELECT C.CustomerID, C.FirstName, C.LastName
FROM Customer AS C
WHERE LastName LIKE '[A-D]%';

SELECT C.CustomerID, C.FirstName, C.LastName
FROM Customer AS C
WHERE LastName LIKE '__d%';

