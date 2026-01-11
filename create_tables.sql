CREATE DATABASE StudentRecordDB;
USE StudentRecordDB;
CREATE TABLE students(
student_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender VARCHAR(10),
date_of_birth DATE,
email VARCHAR(100) UNIQUE
);
CREATE TABLE courses(
course_id INT IDENTITY(1,1) PRIMARY KEY,
course_name VARCHAR(100),
credit_hours INT
);
CREATE TABLE enrollment(
enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
student_id INT FOREIGN KEY REFERENCES students(student_id),
course_id INT FOREIGN KEY REFERENCES courses(course_id),
enrollment_date DATE
);
CREATE TABLE result(
result_id INT IDENTITY(1,1) PRIMARY KEY,
student_id INT FOREIGN KEY REFERENCES students(student_id),
course_id INT FOREIGN KEY REFERENCES courses(course_id),
marks INT CHECK(marks BETWEEN 0 AND 100) );

