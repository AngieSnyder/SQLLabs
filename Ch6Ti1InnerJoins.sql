USE RetailBankingSample

SELECT C.CustomerID, C.FirstName, C.LastName, A.AccountID, A.OpeningDate
FROM Customer AS C
	INNER JOIN Account AS A
	ON C.CustomerID = A.PrimaryCustomerID 
;

SELECT A.AccountID, A.PrimaryCustomerID, A.OpeningDate, CA.AccountNumber
FROM Account AS A
	INNER JOIN CustomerAccount AS CA
	ON A.PrimaryCustomerID = CA.CustomerID
		AND A.AccountID = CA.AccountID;