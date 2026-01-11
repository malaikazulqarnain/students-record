USE StudentRecordDB;
SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollment;
SELECT * FROM result;
SELECT s.first_name,s.last_name
FROM students s
JOIN enrollment e ON s.student_id=e.student_id
JOIN courses c ON e.course_id=c.course_id
WHERE c.course_name='database system';

SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollment e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

SELECT c.course_name, AVG(r.marks) AS avg_marks
FROM result r
JOIN courses c ON r.course_id = c.course_id
GROUP BY c.course_name;

SELECT s.first_name, s.last_name, r.marks
FROM result r
JOIN students s ON r.student_id = s.student_id
WHERE r.marks > 80;

SELECT course_name
FROM courses
WHERE course_id NOT IN (SELECT course_id FROM enrollment);

SELECT TOP 3 s.first_name, s.last_name, r.marks
FROM result r
JOIN students s ON r.student_id = s.student_id
ORDER BY r.marks DESC;

SELECT s.first_name, s.last_name, COUNT(e.course_id) AS total_courses
FROM students s
LEFT JOIN enrollment e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name;

SELECT s.first_name, s.last_name, AVG(r.marks) AS avg_marks
FROM result r
JOIN students s ON r.student_id = s.student_id
GROUP BY s.student_id, s.first_name, s.last_name;

SELECT s.first_name, s.last_name, r.marks
FROM result r
JOIN students s ON r.student_id = s.student_id
WHERE marks < 40;

