/*
	By: Jordan Castillo
	Date: 10 / 1 / 17
	EmaiL: jtcastil@calpoly.edu
	
	AIRLINES database setup script!
*/
CREATE TABLE airlinesList(
airlineID TINYINT,
airlineName VARCHAR(50),
airlineAbbreviation VARCHAR(20),
airlineCountry VARCHAR(20),
PRIMARY KEY(airlineID)
);

CREATE TABLE airportsList(
airportCity VARCHAR(30),
airportCode VARCHAR(8),
airportName VARCHAR(60),
airportCountry VARCHAR(20),
countryAbbreviation VARCHAR(20),
PRIMARY KEY(airportCode)
);

CREATE TABLE flightsList(
airlineID TINYINT,
flightNum INTEGER,
sourceAirport VARCHAR(8),
destAirport VARCHAR(8),
FOREIGN KEY(airlineID) REFERENCES airlinesList(airlineID),
FOREIGN KEY(sourceAirport) REFERENCES airportsList(airportCode),
FOREIGN KEY(destAirport) REFERENCES airportsList(airportCode)
);
