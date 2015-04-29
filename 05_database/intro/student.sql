-- CAPITALISED LETTERS AREN'T NECESSARY

CREATE TABLE students

-- \c students to connect to database

(
	id SERIAL4 PRIMARY KEY, --generates unique key
	firstname VARCHAR(30), -- (30) here sets the limit of input characters
	lastname VARCHAR(50),
	dob DATE,
	gpa FLOAT8
);

--\dt to display table

--DROP TABLE students; -- to delete table


SELECT * FROM students;


INSERT INTO students (firstname,lastname,dob,gpa) VALUES ('cody','perry','1/1/1995',4.0);
INSERT INTO students (firstname,lastname,dob,gpa) VALUES ('bill','jones','1/1/1990',3.3);
INSERT INTO students (firstname,lastname,dob,gpa) VALUES ('janet','jones','1/1/1980',3.7);
INSERT INTO students (firstname,lastname,dob,gpa) VALUES ('jim','smith','1/1/1990',3.4);
INSERT INTO students (firstname,lastname,dob,gpa) VALUES ('jim','perry','1/1/1980',1.3);

UPDATE students SET gpa=5.0 WHERE id = 5; --update an entry in table

SELECT * FROM students where firstname = 'jim'; --selects all entries in table students filtered by firstname equal to jim

DELETE FROM students WHERE id = 5;

select count(*) from students; --counts how many entries
select sum(gpa) from students; --adds all entries from gpa column in table students
select avg(gpa) from students; --averages all entries from gpa column in table students
SELECT * FROM students order by firstname;
SELECT * FROM students order by id, gpa;