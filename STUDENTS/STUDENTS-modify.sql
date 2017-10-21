/*
	By: Jordan Castillo
	Date: 10 / 11 / 17
	Email: jtcastil@calpoly.edu
	
	STUDENTS database Modify script!	
*/

--Extend the database structure to include the information about the GPA for each student.
ALTER TABLE studentList add GPA FLOAT;

--Keep in the database only students in grades 5 and 6, done below
DELETE FROM studentList
WHERE grade <= 4;

--Add a new classroom to the database. classroom=120, teacher= GAWAIN AP-MAWR
INSERT INTO teacherList (lastName, firstName, classroom)
VALUES('AP-MAWR', 'GAWAIN', 120);

--Move JEFFREY FLACHS, TAWANNA HUANG and EMILE GRUNIN to classroom 120.
UPDATE studentList
SET classroom = 120
WHERE (lastName = 'FLACHS' AND firstName = 'JEFFRY')
OR (lastName = 'HUANG' AND firstName = 'TAWANNA')
OR (lastName = 'GRUNIN' AND firstName = 'EMILE');

--Set the GPA of sixth graders to 3.25
UPDATE studentList
SET GPA = 3.25
WHERE grade = 6;

--Set the GPA of fifth graders from room 109 to 2.9
UPDATE studentList
SET GPA = 2.9
WHERE (grade = 5) AND (classroom = 109);

--Set the GPA of fifth graders from room 120 to 3.5
UPDATE studentList
SET GPA = 3.5
WHERE (grade = 5) AND (classroom = 120);

--Set the GPA of CHET MACIAG to 4.0
UPDATE studentList
set GPA = 4.0
WHERE (firstName = 'CHET' AND lastName = 'MACIAG');

--Set the GPA of AL GERSTEIN to be 0.3 higher than whatever it currently is
UPDATE studentList
SET GPA = GPA + 0.3
WHERE (firstName = 'AL' AND lastName = 'GERSTEIN');

--Set the GPA's of TAWANNA HUANG and ELVIRA JAGNEUX to be 10% higher than their current GPAs.
UPDATE studentList
SET GPA = GPA * 1.10
WHERE (firstName = 'TAWANNA' AND lastName = 'HUANG') OR (firstName = 'ELVIRA' AND lastName = 'JAGNEAUX');

SELECT * FROM studentList
ORDER BY GPA, grade, lastName;

SELECT * 
FROM teacherList;


