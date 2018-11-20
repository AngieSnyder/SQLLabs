SELECT A.AccountID, A.OpeningDate,
DATEPART (YYYY, A.OpeningDate) AS OpeningYear,
DATENAME (mm, A.OpeningDate) AS OpeningMonth,
DATEPART (dd, A.OpeningDate) AS OpeningDayofMonth,
DATENAME (weekday, a.OpeningDate) AS OpeningDayofWeek
FROM Account A;