SELECT CT.AcctID
FROM AccountTransaction AS CT
WHERE TransactionDate BETWEEN '20170101' AND '20171231'
	AND TransactionType = 'ATM'
EXCEPT
SELECT CT.AcctID
FROM AccountTransaction AS CT
WHERE TransactionDate BETWEEN '20160101' AND '20161231'
	AND TransactionType = 'ATM'