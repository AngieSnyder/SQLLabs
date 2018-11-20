USE RetailBankingSample;

SELECT C.CustomerID, C.FirstName, C.LastName
	, A.AccountID, A.OpeningBalance, A.OpeningDate
	, AT.Amount, AT.TransactionDate, AT.TransactionType
	, E.FirstName + E.LastName AS EmployeeName
FROM Customer AS C
	INNER JOIN Account AS A
	ON C.CustomerID = A.AccountID
	INNER JOIN AccountTransaction AS AT
	ON AT.AcctID = A.AccountID
	INNER JOIN Employee AS E
	ON E.EmployeeID = A.EmployeeID
;