/*
	By: Jordan Castillo
	Date: 9 / 30 / 17
	Email: jtcastil@calpoly.edu

	CSU database setup script
*/
CREATE TABLE CampusesList(
campusID SMALLINT,
campusName VARCHAR(100),
campusLocation VARCHAR(30),
campusCounty VARCHAR(30),
originYear SMALLINT,
PRIMARY KEY(campusID)
);

CREATE TABLE disciplinesList(
disciplineID SMALLINT,
disciplineName VARCHAR(40),
PRIMARY KEY(disciplineID)
);

CREATE TABLE degreesList(
degreeYear SMALLINT,
campusID SMALLINT,
degreesGiven SMALLINT,
PRIMARY KEY (degreeYear, campusID),
FOREIGN KEY(campusID) REFERENCES CampusesList(campusID)
);

CREATE TABLE csuFeesList(
campusID SMALLINT,
academicYear SMALLINT,
campusFee SMALLINT,
PRIMARY KEY(campusID, academicYear),
FOREIGN KEY(campusID) REFERENCES CampusesList(campusID)
);

CREATE TABLE discEnrollList(
campusID SMALLINT,
disciplineID SMALLINT,
academicYear SMALLINT,
ugradEnrollment SMALLINT,
gradEnrollment SMALLINT,
PRIMARY KEY(campusID, disciplineID, academicYear),
FOREIGN KEY(disciplineID) REFERENCES disciplinesList(disciplineID),
FOREIGN KEY(campusID) REFERENCES CampusesList(campusID)
);

CREATE TABLE enrollmentsList(
campusID SMALLINT,
academicYear SMALLINT,
totalEnrollmentYear INTEGER,
fullTimeStudents INTEGER,
PRIMARY KEY(campusID, academicYear),
FOREIGN KEY(campusID) REFERENCES CampusesList(campusID)
);

CREATE TABLE facultyList(
campusID SMALLINT,
academicYear SMALLINT,
facultyEnrollment SMALLINT,
PRIMARY KEY(campusID, academicYear),
FOREIGN KEY(campusID) REFERENCES CampusesList(campusID)
);
