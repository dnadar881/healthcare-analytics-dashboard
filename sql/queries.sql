-- Total Patients
SELECT COUNT(*) FROM healthcare_data;

-- Total Revenue
SELECT SUM(billing_amount) FROM healthcare_data;

-- Avg Billing
SELECT AVG(billing_amount) FROM healthcare_data;

-- Avg Stay Days
SELECT AVG(DATEDIFF(discharge_date, admission_date)) FROM healthcare_data;

-- Admission Type Distribution
SELECT admission_type, COUNT(*) 
FROM healthcare_data 
GROUP BY admission_type;

-- Top Hospitals by Revenue
SELECT hospital, SUM(billing_amount) AS revenue
FROM healthcare_data
GROUP BY hospital
ORDER BY revenue DESC
LIMIT 10;
