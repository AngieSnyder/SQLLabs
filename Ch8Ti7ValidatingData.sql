USE RetailBankingSample

SELECT MAX(Birthdate)
FROM Customer
WHERE Birthdate IS NOT NULL;

SELECT MIN(BIRTHDATE)
FROM Customer
WHERE Birthdate IS NOT NULL;

SELECT COUNT(*) BIRTHDATE
FROM CUSTOMER
WHERE BIRTHDATE IS NULL;

SELECT COUNT(*) BIRTHDATE 
FROM Customer
WHERE Birthdate = '1753-01-01';

SELECT COUNT(*) BIRTHDATE
FROM Customer
WHERE Birthdate = '1753-01-01'
AND CustomerID >= 300;

SELECT COUNT(*) Birthdate
FROM Customer
WHERE Birthdate IS NULL
AND CustomerID >= 300;

UPDATE Customer
SET Birthdate = NULL
WHERE Birthdate = '1753-01-01';

SELECT * 
FROM Customer
WHERE LEN(ZipCode) = 4;

UPDATE Customer
SET ZipCode = '0'+ZipCode
WHERE LEN(ZipCode) = 4;