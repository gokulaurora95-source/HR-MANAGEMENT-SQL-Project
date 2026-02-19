use gokul;

show databases;
show tables;
use student;

select*from student;


UPDATE student
SET age = 25
WHERE id = 1;
select*from student;

DELETE FROM student
WHERE id = 3;


select*from student limit 1;

select*from student;
 select*from student order by id asc;
 
 select max(age)from student;
 
  select avg (age)from student;
  
    select sum (age)from student;
    
    select*from student;
    
    SELECT student, COUNT(age) AS Total_age
FROM age
GROUP BY student;