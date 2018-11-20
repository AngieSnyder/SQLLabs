USE RetailBankingSample

SELECT MAX(InnerAT.TransactionDate)
FROM AccountTransaction AS InnerAT;

SELECT AT.AcctID, AT.TransactionDate, AT.Amount
FROM AccountTransaction AS AT
WHERE AT.TransactionDate = 
	(SELECT MAX(InnerAT.TransactionDate)
FROM AccountTransaction AS InnerAT);


SELECT AT.AcctID, AT.TransactionDate, AT.Amount
FROM AccountTransaction AS AT
WHERE AT.TransactionDate =
	(SELECT MAX(InnerAT.TransactionDate)
	FROM AccountTransaction AS InnerAT
	WHERE InnerAT.AcctID = AT.AcctID)
ORDER BY AT.AcctID;