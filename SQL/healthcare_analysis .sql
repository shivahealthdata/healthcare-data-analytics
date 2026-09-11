-- Healthcare Data Analytics Project
-- Synthetic dataset: 1,000 patients

-- 1. Total number of patients
SELECT COUNT(*) AS total_patients
FROM patients;

-- 2. Patients by gender
SELECT gender, COUNT(*) AS patient_count
FROM patients
GROUP BY gender;

-- 3. Patients by department
SELECT department, COUNT(*) AS patient_count
FROM patients
GROUP BY department
ORDER BY patient_count DESC;

-- 4. Top diagnoses
SELECT diagnosis, COUNT(*) AS patient_count
FROM patients
GROUP BY diagnosis
ORDER BY patient_count DESC;

-- 5. Average patient age
SELECT AVG(age) AS average_age
FROM patients;

-- 6. Patients by age group
SELECT
    CASE
        WHEN age < 18 THEN '0-17'
        WHEN age BETWEEN 18 AND 30 THEN '18-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS patient_count
FROM patients
GROUP BY
    CASE
        WHEN age < 18 THEN '0-17'
        WHEN age BETWEEN 18 AND 30 THEN '18-30'
        WHEN age BETWEEN 31 AND 45 THEN '31-45'
        WHEN age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END
ORDER BY patient_count DESC;
