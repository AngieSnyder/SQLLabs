USE RetailBankingSample

BEGIN TRANSACTION
DROP TABLE MyTransactions;

ROLLBACK;

SELECT * FROM MyTransactions;