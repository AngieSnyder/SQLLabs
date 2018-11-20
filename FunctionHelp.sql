USE RetailBankingSample

SELECT CONVERT(varchar(30), GETDATE(), 109);

SELECT FirstName, SUBSTRING(FirstName, 1, 1) AS Initial ,
SUBSTRING(FirstName, 3, 2) AS ThirdAndFourthCharacters
FROM Customer 
;

