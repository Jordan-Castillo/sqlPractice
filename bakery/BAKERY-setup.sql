/*
	By: Jordan Castillo
	Date: 10 / 2 / 17
	Email: jtcastil@calpoly.edu
	
	BAKERY database setup script!
*/
CREATE TABLE customersList(
customerID TINYINT,
lastName VARCHAR(30),
firstName VARCHAR(30),
PRIMARY KEY(customerID)
);
CREATE TABLE goodsList(
goodsID VARCHAR(30),
goodsFlavor VARCHAR(20),
category VARCHAR(20),
price FLOAT,
PRIMARY KEY(goodsID)
);
CREATE TABLE receiptsList(
receiptNum INTEGER,
receiptDate DATE,
customerID TINYINT,
PRIMARY KEY(receiptNum),
FOREIGN KEY(customerID) REFERENCES customersList(customerID)
);
CREATE TABLE itemsList(
receiptNum INTEGER,
ordinal TINYINT,
goodsID VARCHAR(30),
PRIMARY KEY(receiptNum, ordinal, goodsID),
FOREIGN KEY(receiptNum) REFERENCES receiptsList(receiptNum)
);
