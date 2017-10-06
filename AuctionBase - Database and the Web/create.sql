drop table if exists AuctionUser;
drop table if exists Items;
drop table if exists Bid;
drop table if exists Category;
CREATE TABLE AuctionUser (
 	UserID TEXT PRIMARY KEY,
 	Rating INT,
 	Location TEXT,
 	Country TEXT
);
CREATE TABLE Items (
 	ItemID INT PRIMARY KEY,
 	UserID TEXT, 
 	Name TEXT,
 	Currently REAL,
 	Buy_Price REAL,
 	First_Bid REAL,
 	Number_of_Bids INT,
 	Start_TIme DATETIME,
 	End_TIme DATETIME,
 	Description TEXT,
 	FOREIGN KEY(UserID) REFERENCES UserID(AuctionUser)
);
CREATE TABLE Bid (
 	ItemID INT,
 	UserID TEXT,
 	Time DATETIME,
 	Amount REAL,
 	PRIMARY KEY(UserID,ItemID,Time),
 	FOREIGN KEY(UserID) REFERENCES UserID(AuctionUser),
 	FOREIGN KEY(ItemID) REFERENCES ItemID(Items)
);
CREATE TABLE Category (
 	ItemID INT,
 	Category TEXT,
 	PRIMARY KEY(ItemID,Category),
 	FOREIGN KEY(ItemID) REFERENCES ItemID(Items)
);