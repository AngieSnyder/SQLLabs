USE RetailBankingSample

Declare @intYear int = (SELECT YEAR(MAX(OpeningDate))
	FROM Account);

SELECT * FROM AccountTransaction
WHERE YEAR(TransactionDate) = @intYear