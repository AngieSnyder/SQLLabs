USE RetailBankingSample

SET STATISTICS IO ON;
SET STATISTICS TIME ON;

SELECT MT.NewTranKey, MT.Amount
FROM MyTransactions AS MT
WHERE TransactionType = 'Interest';

CREATE INDEX nc_MyTrans_TransType
	ON MyTransactions (TransactionType)
	INCLUDE (Amount);
