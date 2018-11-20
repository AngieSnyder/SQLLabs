USE HealthCareSample

CREATE INDEX nc_PDM_Condition
ON PatientDiseaseMap (Condition)
INCLUDE (FullName, PatientID);