/*
	By: Jordan Castillo
	Date: 9 / 29 / 17
	Email: jtcastil@calpoly.edu
	Contains the setup commands to create the studentList table in mysql.

	These statements create the table for studentList and teacherList 
	The firstName and lastName was chosen for both Primary Key and Unique, 
		because the grade is far from unique, as with the classroom. 	
*/
CREATE TABLE studentList(
lastName VARCHAR(30), firstName VARCHAR(30),
grade TINYINT, classroom SMALLINT,
PRIMARY KEY (lastName, firstName),
UNIQUE (lastName, firstName)
);

CREATE TABLE teacherList(
lastName VARCHAR(30), firstName VARCHAR(30),
classroom SMALLINT,
PRIMARY KEY(lastName, firstName),
UNIQUE(lastName, firstName)
);

