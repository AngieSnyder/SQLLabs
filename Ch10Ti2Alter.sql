USE RetailBankingSample

BEGIN TRANSACTION;

ALTER TABLE MyTransactions
	ADD ImportedDate datetime2;

Commit;

BEGIN TRANSACTION;

UPDATE MyTransactions
	SET ImportedDate = SYSDATETIME();

SELECT * FROM MyTransactions;

COMMIT;

ALTER TABLE MyTransactions
ALTER COLUMN TransactionDate datetimeoffset;