CREATE TABLE courses (
  id INT PRIMARY KEY AUTO_INCREMENT,
  CourseName VARCHAR(255),
  Instructor VARCHAR(255),
  Category VARCHAR(100),
  Enrolled INT,
  Rating DECIMAL(3,2)
);
INSERT INTO courses (CourseName, Instructor, Category, Enrolled, Rating) VALUES 
('Python Basics', 'Alice Smith', 'Programming', 150, 4.5),
('Excel for Beginners', 'Bob Jones', 'Productivity', 100, 4.2),
('Data Science 101', 'Carol White', 'Data Science', 200, 4.7),
('Intro to SQL', 'Dave Brown', 'Data Science', 180, 4.3),
('Graphic Design', 'Eve Davis', 'Design', 90, 4.0),
('Advanced Excel', 'Bob Jones', 'Productivity', 120, 4.1);
select * from courses;
select * from courses where CourseName like  'Data%';
select * from courses order by Rating desc;
select * from courses order by Enrolled desc limit 2;
select Category, sum(Enrolled) as total_students from courses group by Category;
select Category, count(CourseName) as bilang_courses from courses group by Category;
select Category, sum(Enrolled) as enrolled from courses group by Category having enrolled > 250;
select Instructor, avg(Rating) as average from courses where Instructor like 'Bob%' group by Instructor;
select CourseName from courses where Category = 'Productivity' order by Enrolled desc;
select Category, avg(Rating) as average from courses group by Category having avg(Rating) >= 4.3;