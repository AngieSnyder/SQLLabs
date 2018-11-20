USE RetailBankingSample

Select A.AccountID, A.OpeningDate, A.OpeningBalance 
FROM Account AS A
WHERE AccountTypeID BETWEEN 6 AND 9;

SELECT COUNT (*)
FROM LoanTransaction AS LT;

Select A.AccountID, A.OpeningDate, A.OpeningBalance,
	(SELECT COUNT (*) 
		FROM LoanTransaction AS LT
		WHERE LT.AcctID = A.AccountID)
		AS NumberTransactions
FROM Account AS A
WHERE AccountTypeID BETWEEN 6 AND 9;