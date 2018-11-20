USE RetailBankingSample

SELECT CONCAT(RTRIM(C.FirstName),' ', C.MiddleName, ' ', RTRIM(C.LastName)) AS FullName
FROM Customer AS C;