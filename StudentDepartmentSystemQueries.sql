-- 1
SELECT 
    students.name, students.city, courses.course_name
FROM
    students,
    courses,
    courses_registered,
    departments
WHERE
    students.roll_number = courses_registered.student_code
        AND courses_registered.course_code = courses.course_number
        AND courses.department_code = departments.department_code
        AND department_name = 'CSE';

-- 2
SELECT 
    COUNT(*) AS 'Total Faculty', departments.department_name
FROM
    teachers,
    departments
WHERE
    teachers.department_code = departments.department_code
        AND departments.department_name = 'CSE';
        
-- 3
SELECT 
    semester, course_name
FROM
    courses_taught,
    courses,
    departments
WHERE
    courses_taught.course_code = courses.course_number
        AND courses.department_code = departments.department_code
        AND departments.department_name = 'CSE';
        
-- 4
SELECT 
    *
FROM
    students
WHERE
    semester = 'FALL2018';

-- 5
SELECT 
    CGPA, name
FROM
    (SELECT 
        AVG(CASE
                WHEN grade BETWEEN 90 AND 100 THEN 10
                WHEN grade BETWEEN 80 AND 89 THEN 6
                WHEN grade BETWEEN 70 AND 79 THEN 4
                WHEN grade BETWEEN 0 AND 69 THEN 0
            END) AS CGPA,
            students.name
    FROM
        courses_registered, students
    WHERE
        courses_registered.student_code = students.roll_number
    GROUP BY courses_registered.student_code) CGPAS
WHERE
    CGPA > '8.5';
    
-- 6
SELECT 
    students.name,
    COUNT(courses_registered.course_code) AS 'Courses Registered'
FROM
    courses_registered,
    students
WHERE
    students.roll_number = courses_registered.student_code
GROUP BY courses_registered.student_code;
/*
SELECT 
    AVG(course_count) AS "Average Subjects"
FROM
    (SELECT 
        COUNT(course_code) AS course_count
    FROM
        courses_registered
    GROUP BY student_code) course_count;
*/

SELECT 
    students.name
FROM
    students,
    program_enrollment,
    academic_programs
WHERE
    students.roll_number = program_enrollment.student_code
        AND program_enrollment.program_code = academic_programs.program_code
        AND (academic_programs.program_name = 'MCA'
        OR academic_programs.program_name = 'M.Tech')
GROUP BY students.name
HAVING COUNT(students.name) > 1;

-- 8
SELECT 
    COUNT(courses_registered.course_code) AS 'Registred in DBMS'
FROM
    courses_registered,
    courses
WHERE
    courses.course_number = courses_registered.course_code
        AND courses.course_name = 'DBMS';
        
-- 9 
SELECT 
    courses_registered.sem AS 'Semester'
FROM
    courses_registered,
    courses
WHERE
    courses.course_number = courses_registered.course_code
        AND courses.course_name = 'DBMS';
        
-- 10
SELECT 
    students.name
FROM
    students
ORDER BY students.name;

-- 11
UPDATE students 
SET 
    city = 'Tezpur'
WHERE
    (roll_number = 'CSI08002');

-- 12
SELECT 
    academic_programs.duration
FROM
    academic_programs
WHERE
    academic_programs.program_name LIKE 'MCA';

-- 13
SELECT 
    courses.course_name
FROM
    courses,
    departments
WHERE
    courses.department_code = departments.department_code
        AND departments.department_name = 'CSE';
        
-- 14
SELECT 
    students.name
FROM
    students
WHERE
    students.city LIKE 'Tezpur';
    
-- 15
SELECT 
    COUNT(*) AS 'Number of Departments'
FROM
    departments;
