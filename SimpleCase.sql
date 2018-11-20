USE RetailBankingSample;

SELECT AT.AcctID, AT.AccountTransactionID, AT.Amount,
	CASE AT.TransactionType
		WHEN 'In Bank' THEN 'IB'
		WHEN 'Debit Card' THEN 'DC'
		WHEN 'Direct Deposit' THEN 'DD'
		WHEN 'Mobile App' THEN 'MA'
		WHEN 'ATM' THEN 'ATM'
		WHEN 'Check' THEN 'CHK'
	ELSE 'A new type may have been added to the database. 
	Please check with your DBA'
		END TypeAbbr
FROM AccountTransaction AS AT;