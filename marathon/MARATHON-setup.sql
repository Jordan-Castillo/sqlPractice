/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	MARATHON dataset setup script!
*/
CREATE TABLE marathonList(
finishPlace SMALLINT,
finishTime TIME,
pace TIME,
groupPlacement VARCHAR(20),
groupNum VARCHAR(20),
age TINYINT,
sex VARCHAR(3),
BIBNumber SMALLINT,
firstName VARCHAR(30),
lastName VARCHAR(30),
townName VARCHAR(30),
state VARCHAR(8),
PRIMARY KEY(finishPlace)
);
