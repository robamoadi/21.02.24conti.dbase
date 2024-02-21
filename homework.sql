--1.CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT,city TEXT, birth INTEGER);
--2.INSERT INTO students VALUES (1, 'SHALOM','TEL AVIV , 1974);
--INSERT INTO students VALUES (2, 'YURI ', 'RAANANA' , 1980);
--INSERT INTO students VALUES (3, 'ANAT', 'RISHON' ,1994);
--INSERT INTO students VALUES (4, 'DANA', 'REHOVOT',1990);
--INSERT INTO students VALUES (5, 'OMER', 'JERUSALEM' ,1987);

--3.CREATE TABLE grade (id INTEGER PRIMARY KEY,grade INTEGER);
--4.INSERT INTO grade VALUES (1, 95);
--INSERT INTO grade VALUES (2, 70);
--INSERT INTO grade VALUES (3, 85);
--INSERT INTO grade VALUES (4, 99);
--INSERT INTO grade VALUES (5, 91);

--5.SELECT s.id, s.name, s.city, s.birth, g.grade FROM students s JOIN grade g ON s.id=g.id

--6.SELECT AVG(grade) from grade

--7.ALTER TABLE grade ADD COLUMN EXCELLENT
--8.UPDATE grade SET EXCELLENT='yes' WHERE id=1;
--UPDATE grade SET EXCELLENT='no' WHERE id=2;
--UPDATE grade SET EXCELLENT='no' WHERE id=3;
--UPDATE grade SET EXCELLENT='yes' WHERE id=4;
--UPDATE grade SET EXCELLENT='yes' WHERE id=5;

--9.SELECT s.id, s.name, s.city, s.birth, g.grade FROM studebts s JOIn 
--grade g ON s.id=g.id WHERE g.grade > (SELECT AVG(grade) from grade)

--10.SELECT s.id, s.name, s.city, s.birth, g.grade FROM students s JOIN
--grade g ON s.id=g.id WHERE g.grade = (SELECT MAX(grade) FROM grade)