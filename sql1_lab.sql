-- SQL Exercises (With Answers)

-- 1. Retrieve all students who enrolled in 2023.

SELECT * 
FROM students
WHERE enrollment_year = 2023;

-- 2. Find students whose email contains 'gmail.com'.

SELECT * 
FROM students
WHERE email LIKE '%gmail.com%';

-- 3. Count how many students are enrolled in the database.

SELECT COUNT(*) AS total_students
FROM students;

-- 4. Find students born between 2000 and 2005.

SELECT * 
FROM students
WHERE birth_year BETWEEN 2000 AND 2005;

-- 5. List students sorted by last name in descending order.

SELECT * 
FROM students
ORDER BY last_name DESC;

-- 6. Find the names of students and the courses they are enrolled in.

SELECT students.name, courses.course_name
FROM students
JOIN enrollments ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.id;

-- 7. List all students and their courses, ensuring students without courses are included (LEFT JOIN).

SELECT students.name, courses.course_name
FROM students
LEFT JOIN enrollments ON students.id = enrollments.student_id
LEFT JOIN courses ON enrollments.course_id = courses.id;

-- 8. Find all courses with no students enrolled (LEFT JOIN).

SELECT courses.course_name
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
WHERE enrollments.student_id IS NULL;



-- 10. List courses and show the number of students enrolled in each course.

SELECT courses.course_name, COUNT(enrollments.student_id) AS total_students
FROM courses
LEFT JOIN enrollments ON courses.id = enrollments.course_id
GROUP BY courses.course_name;


