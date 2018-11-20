USE RetailBankingSample
SELECT C.CustomerID, C.City, C.StateProvinceCode
from Customer AS C
ORDER BY C.StateProvinceCode DESC, C.City ASC;