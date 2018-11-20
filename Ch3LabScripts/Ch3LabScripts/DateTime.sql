USE HealthCareSample

SELECT OV.PatientID, OV.VisitDate,
	DATEPART(yyyy, OV.VisitDate) AS Year,
	DATEPART(month, OV.VisitDate) AS MonthName,
	DATEPART(mm, OV.VisitDate) AS MonthNumber,
	DATEPART(WEEKDAY, OV.VisitDate) AS DayofWeek,
	DATEPART(dd, OV.VisitDate) AS DayofMonth,
	DATEPART(dayofyear, OV.VisitDate) AS DayofYear,
	DATEADD(dd,30, OV.VisitDate) AS Net30
FROM OutpatientVisit AS OV;