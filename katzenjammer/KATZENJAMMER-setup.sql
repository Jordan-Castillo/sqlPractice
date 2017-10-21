/*
	By: Jordan Castillo
	Date: 10 / 1 / 17
	Email: jtcastil@calpoly.edu
	
	KATZENJAMMER database setup script!
*/
CREATE TABLE songsList(
songID TINYINT,
songTitle VARCHAR(50),
PRIMARY KEY(songID)
);

CREATE TABLE bandList(
bandID TINYINT,
firstName VARCHAR(20),
lastName VARCHAR(20),
PRIMARY KEY(bandID)
);

CREATE TABLE albumsList(
albumID TINYINT,
albumTitle VARCHAR(50),
albumYear SMALLINT,
labelName VARCHAR(50),
albumType VARCHAR(40),
PRIMARY KEY(albumID)
);

CREATE TABLE instrumentsList(
songID TINYINT,
bandmateID TINYINT,
instrumentName VARCHAR(30),
PRIMARY KEY(songID, bandmateID, instrumentNAme),
FOREIGN KEY(songID) REFERENCES songsList(songID),
FOREIGN KEY(bandmateID) REFERENCES bandList(bandID)
);

CREATE TABLE performanceList(
songID TINYINT,
bandmateID TINYINT,
stagePosition VARCHAR(20),
PRIMARY KEY(songID, bandmateID),
FOREIGN KEY(songID) REFERENCES songsList(songID),
FOREIGN KEY(bandmateID) REFERENCES bandList(bandID)
);

CREATE TABLE tracklistsList(
albumID TINYINT,
position TINYINT,
songID TINYINT,
PRIMARY KEY(albumID, position),
FOREIGN KEY(albumID) REFERENCES albumsList(albumID),
FOREIGN KEY(songID) REFERENCES songsList(songID)
);

CREATE TABLE vocalsList(
songID TINYINT,
bandmateID TINYINT,
vocalType VARCHAR(20),
PRIMARY KEY(songID, bandmateID, vocalType),
FOREIGN KEY(songID) REFERENCES songsList(songID),
FOREIGN KEY(bandmateID) REFERENCES bandList(bandID)
);
