/*
	By: Jordan Castillo
	Date: 10 / 1 / 17
	Email: jtcastil@calpoly.edu
removed the below foreign key from wineList relation
FOREIGN KEY(appelation) REFERENCES appelationsList(appelation)
*/
CREATE TABLE appelationsList(
appNum SMALLINT,
appelation VARCHAR(50),
county VARCHAR(40),
state VARCHAR(20),
geogArea VARCHAR(30),
isAVA VARCHAR(8),
PRIMARY KEY(appNum),
UNIQUE(appelation)
);

CREATE TABLE grapesList(
grapeID SMALLINT,
grapeName VARCHAR(30),
grapeColor VARCHAR(20),
PRIMARY KEY(grapeID),
UNIQUE(grapeName)
);

CREATE TABLE wineList(
wineNum INTEGER,
grapeName VARCHAR(50),
wineryName VARCHAR(50),
appelation VARCHAR(50),
state VARCHAR(40),
wineName VARCHAR(50),
wineYear SMALLINT,
winePrice INTEGER,
wineScore TINYINT,
wineCases INTEGER,
drinkAdvice VARCHAR(30),
PRIMARY KEY(wineNum),
FOREIGN KEY(grapeName) REFERENCES grapesList(grapeName)
);

