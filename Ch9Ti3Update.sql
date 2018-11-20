USE RetailBankingSample

SELECT  C.FirstName + ' ' +  C.LastName AS CustomerName, 
	C.CustomerID, CA.AccountNumber, A.AccountID, A.OpeningDate, 
	CONVERT(datetimeoffset, A.OpeningDate) AS OpeningDateOffset
INTO CustomerAccountExtended 
FROM Customer AS C
	INNER JOIN CustomerAccount AS CA
		ON C.CustomerID = CA.CustomerID
	INNER JOIN Account AS A
		ON A.AccountID = CA.AccountID
ORDER BY C.CustomerID

INSERT INTO CustomerAccountExtended
	VALUES ('Ann Weber',500, 'AWeber900', 900, GETDATE(), SYSDATETIMEOFFSET());

SELECT C.CustomerID, C.StateProvinceCode, CAE.OpeningDate, CAE.OpeningDateOffset
FROM CustomerAccountExtended AS CAE
INNER JOIN Customer AS C
	ON C.CustomerID = CAE.CustomerID
WHERE StateProvinceCode = 'CA';

SELECT C.CustomerID, C.StateProvinceCode, CAE.OpeningDate, 
SWITCHOFFSET(OpeningDateOffset, '-08:00')
FROM CustomerAccountExtended AS CAE
INNER JOIN Customer AS C
	ON C.CustomerID = CAE.CustomerID
WHERE C.StateProvinceCode = 'CA';

UPDATE CustomerAccountExtended

SET OpeningDateOffset=
	SWITCHOFFSET(OpeningDateOffset, '-08:00')
FROM CustomerAccountExtended AS CAE
	INNER JOIN Customer AS C
	ON C.CustomerID = CAE.CustomerID
WHERE C.StateProvinceCode = 'CA';

SELECT C.CustomerID, C.StateProvinceCode, CAE.OpeningDate, CAE.OpeningDateOffset
FROM CustomerAccountExtended AS CAE
INNER JOIN Customer AS C
	ON C.CustomerID = CAE.CustomerID
WHERE StateProvinceCode = 'CA';

COMMIT
