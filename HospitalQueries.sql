-- 1
SELECT * FROM patient_registration WHERE registration_date BETWEEN "2002-07-20" AND "2008-08-20";

-- 2
UPDATE patient_registration SET name = 'Ram' WHERE (registration_number = 'PT011');

-- 3
SELECT 
    patient_registration.name
FROM
    patient_registration,
    tests
WHERE
    patient_registration.registration_number = tests.patient_reg_number
        AND tests.date = '2008-07-20';
        
-- 4
SELECT 
    COUNT(*)
FROM
    patient_registration,
    doctors
WHERE
    doctors.id = patient_registration.referral_doctor
        AND doctors.name = 'ABC';
        
-- 5
SELECT 
    name
FROM
    (SELECT 
        doctors.name AS name, COUNT(*) AS count
    FROM
        patient_registration, doctors
    WHERE
        patient_registration.referral_doctor = doctors.id
    GROUP BY patient_registration.referral_doctor) count
LIMIT 1;

-- 6
UPDATE patient_registration SET bed_number = '2' WHERE (registration_number = 'PT023');

-- 7
UPDATE beds SET status = 'not allotted' WHERE (bed_number = '123');

-- 8
SELECT 
    *
FROM
    beds
WHERE
    ward_number = 10
        AND id NOT IN (SELECT 
            bed_number
        FROM
            patient_registration);

-- 9
SELECT 
    patient_registration.name
FROM
    patient_registration,
    doctors,
    beds
WHERE
    beds.id = patient_registration.bed_number
        AND doctors.id = patient_registration.referral_doctor
        AND beds.ward_number = 13
        AND patient_registration.gender = 'male';
        
-- 10
SELECT 
    patient_registration.name
FROM
    patient_registration,
    doctors,
    beds
WHERE
    beds.id = patient_registration.bed_number
        AND doctors.id = patient_registration.referral_doctor
        AND doctors.name LIKE "%das%"
        AND patient_registration.age > 50;