USE RetailBankingSample;

--Step #2
DECLARE @charSample char(10) = 'Test'
	, @varcharSample varchar(10) = 'Test'
	, @ncharSample nchar(10) = N'Test'
	, @nvarcharSample nvarchar(10) = N'Test'

SELECT  @charSample + @varcharSample 
			+ @ncharSample + @nvarcharSample AS AllTogether
;
/*GO - batch directive is included so that I can include a 2nd declaration
of the same variables to make highlighting and executing the queries
easier without having a bunch of red squigglies. */


GO
-- Step #3
DECLARE @charSample char(10) = 'Test'
	, @varcharSample varchar(10) = 'Test'
	, @ncharSample nchar(10) = N'Test'
	, @nvarcharSample nvarchar(10) = N'Test'

SELECT LEN(@charSample) AS CharLen
	, DATALENGTH(@charSample) AS CharBytes
	, LEN(@varcharSample) AS VarCharLen
	, DATALENGTH(@varcharSample) AS VarCharBytes
	, LEN(@NcharSample) AS NCharLen
	, DATALENGTH(@NcharSample) AS NCharBytes
	, LEN(@NvarcharSample) AS NVarCharLen
	, DATALENGTH(@NvarcharSample) AS NVarCharBytes
;

SELECT RTRIM(C.FirstName) + ' ' + LTRIM(C.LastName) AS FullName
FROM Customer AS C;


SELECT AT.AccountTransactionID, AT.AcctID
	, AT.TransactionDate, At.TransactionType,
	FORMAT(AT.Amount, 'C2', 'en-US') AS USMoneyAmount,
	FORMAT(AT.Amount, 'C2', 'fr-FR') AS FrenchMoneyAmount
FROM AccountTransaction AS AT;


SELECT AT.AccountTransactionID, AT.AcctID
	, AT.TransactionDate, At.TransactionType,
	FORMAT(AT.Amount, 'C2', 'en-US') AS USMoneyAmount,
	FORMAT(AT.Amount, 'C2', 'fr-FR') AS FrenchMoneyAmount,
	FORMAT(AT.TransactionDate, 'd', 'en-US') AS USDate,
	FORMAT(AT.TransactionDate, 'd', 'fr-FR') AS FrenchDate
FROM AccountTransaction AS AT;

SELECT AT.AccountTransactionID, AT.AcctID
	, At.TransactionType,
	FORMAT(AT.Amount, 'C2', 'en-US') AS USMoneyAmount,
	FORMAT(AT.Amount, 'C2', 'fr-FR') AS FrenchMoneyAmount,
	FORMAT(AT.TransactionDate, 'd', 'en-US') AS USDate,
	FORMAT(AT.TransactionDate, 'd', 'fr-FR') AS FrenchDate,
	FORMAT(AT.TransactionDate, 'D', 'en-US') AS CustomDate
FROM AccountTransaction AS AT;
