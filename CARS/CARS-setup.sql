/*
	By: Jordan Castillo
	Date: 10 / 1 / 17
	Email: jtcastil@calpoly.edu

	CARS database setup script!
*/
/*foreign key to countriesList*/
CREATE TABLE continentsList(
continentID TINYINT,
continentName VARCHAR(50),
PRIMARY KEY(continentID)
);

CREATE TABLE countriesList(
countryID SMALLINT,
countryName VARCHAR(50),
continentID TINYINT,
PRIMARY KEY(countryID),
FOREIGN KEY(continentID) REFERENCES continentsList(continentID)
);

CREATE TABLE carMakersList(
carMakerID SMALLINT,
carMakerShort VARCHAR(20),
carMakerName VARCHAR(50),
countryID SMALLINT,
PRIMARY KEY(carMakerID),
FOREIGN KEY(countryID) REFERENCES countriesList(countryID)
);

CREATE TABLE modelListList(
modelID SMALLINT,
carMakerID SMALLINT,
modelName VARCHAR(30),
PRIMARY KEY(modelID),
UNIQUE (modelName),
FOREIGN KEY(carMakerID) REFERENCES carMakersList(carMakerID)
);

CREATE TABLE carNamesList(
carNameID SMALLINT,
modelName VARCHAR(30),
makeDescription VARCHAR(80),
PRIMARY KEY(carNameID),
/* UNIQUE(makeDescription), */
FOREIGN KEY(modelName) REFERENCES modelListList(modelName)
);

CREATE TABLE carsDataList(
carNameID SMALLINT,
mpg TINYINT,
cylinders TINYINT,
engDisplaceVol SMALLINT,
horsePower SMALLINT,
weight SMALLINT, 
accelerate FLOAT,
carYear SMALLINT,
PRIMARY KEY(carNameID, carYear),
FOREIGN KEY(carNameID) REFERENCES carNamesList(carNameID)
);

