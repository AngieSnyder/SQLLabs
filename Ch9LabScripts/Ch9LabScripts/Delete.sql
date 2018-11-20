SELECT DISTINCT OV.PatientID
FROM OutpatientVisit AS OV
INNER JOIN OutpatientVisitSummary AS OVS
ON OV.PatientID = OVS.PatientID
WHERE ICD10_2 IS NULL AND ICD10_3 IS NULL;

BEGIN TRANSACTION;


DELETE FROM OutpatientVisitSummary 
FROM OutpatientVisit AS OV
INNER JOIN OutpatientVisitSummary AS OVS
ON OV.PatientID = OVS.PatientID
WHERE ICD10_2 IS NULL;

SELECT OVS.*, OV.ICD10_1, OV.ICD10_2, OV.ICD10_3
FROM OutpatientVisitSummary AS OVS
INNER JOIN OutpatientVisit AS OV
ON OVS.PatientID = OV.PatientID;

COMMIT;