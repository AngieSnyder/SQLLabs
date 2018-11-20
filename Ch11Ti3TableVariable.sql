USE RetailBankingSample

DECLARE @TransactionTotals table (AccounntID int, 
	TransactionYear int, TotalAmt money);

INSERT INTO @TransactionTotals
SELECT AcctID, Year(TransactionDate) AS TransactionYear, 
	SUM(Amount) AS Total
FROM AccountTransaction
GROUP BY AcctID, YEAR(TransactionDate);

SELECT * FROM @TransactionTotals
ORDER BY AccounntID, TransactionYear;