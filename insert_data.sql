USE StudentRecordDB;
INSERT INTO students(first_name,last_name,gender,date_of_birth,email)VALUES
('malaika','zulqarnain','female','2002-09-30','malaika56@gmail.com'),
('ayesha','afzal','female','2001-01-10','ayesha1@gmail.com'),
('fatima','mehmood','female','2003-02-03','fatima2@gmail.com'),
('Babar','azam','male','1990-05-10','babar3@gmail.com'),
('ali','ahmad','male','1992-04-22','ali4@gmail,com'),
('bilal','abbas','male','2004-05-23','bilal08@gmail.com'),
('fatima','sajid','female','2003-02-10','fatimasajid11@gmail.com'),
('maryam','Khalid','female','2002-06-09','maryam33@gmail.com'),
('nida','nadeem','female','2001-01-17','nida22@gmail.com'),
('mubbara','zulqarnain','female','2003-07-22','mubbara09@gmail.com');

INSERT INTO courses(course_name,credit_hours)VALUES
('database system',3),
('operating system',4),
('artificial intelligence',3),
('programming fundamentals',2),
('mobile application development',4);

INSERT INTO enrollment(student_id,course_id,enrollment_date)VALUES
(1,1,'2024-01-10'),(1,2,'2024-01-10'),
(2,1,'2024-01-11'),(2,3,'2024-01-11'),
(3,2,'2024-01-12'),(3,4,'2024-01-12'),
(4,3,'2024-01-13'),(4,5,'2024-01-13'),
(5,1,'2024-01-14'),(5,6,'2024-01-14'),
(6,2,'2024-01-15'),(6,7,'2024-01-15'),
(7,1,'2024-01-16'),(7,8,'2024-01-16'),
(8,4,'2024-01-17'),(8,9,'2024-01-17'),
(9,5,'2024-01-18'),(9,10,'2024-01-18'),
(10,1,'2024-01-19'),(10,3,'2024-01-19');

INSERT INTO result(student_id,course_id,marks)VALUES
(1,1,85),(1,2,78),
(2,1,92),(2,3,88),
(3,2,45),(3,4,67),
(4,3,74),(4,5,59),
(5,1,33),(5,4,81),
(6,2,90),(6,3,72),
(7,1,69),(7,5,95),
(8,4,56),(8,3,34),
(9,5,77),(9,2,82),
(10,1,40),(10,3,91);
