USE RetailBankingSample

SELECT C.FirstName, C.LastName, CA.AccountNumber
INTO #TempCustomerAccountInfo
FROM Customer AS C
	INNER JOIN CustomerAccount AS CA
	ON C.CustomerID = CA.CustomerID;

SELECT * FROM #TempCustomerAccountInfo