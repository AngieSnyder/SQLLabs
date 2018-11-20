USE RetailBankingSample

SELECT A.AccountID, A.OpeningDate,
	DATEADD(YY, 30, A.OpeningDate) AS LoanCompleation
FROM Account AS A
WHERE AccountTypeID IN (6,9);

SELECT LT.AcctID
	, DATEDIFF(dd, MAX(TransactionDate), getdate()) AS DaysSinceLastTransaction
From LoanTransaction AS LT
	INNER JOIN Account AS A
	ON LT.AcctID = A.AccountID
WHERE AccountTypeID IN(6,9)
GROUP BY AcctID
ORDER BY AcctID;