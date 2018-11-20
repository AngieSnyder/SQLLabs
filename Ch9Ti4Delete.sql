USE RetailBankingSample

BEGIN TRANSACTION;
TRUNCATE TABLE CustomerAccountExtended;

SELECT * FROM CustomerAccountExtended;
ROLLBACK;
SELECT * FROM CustomerAccountExtended;


