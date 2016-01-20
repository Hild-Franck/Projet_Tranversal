CREATE TABLE Users
(
ID_Users INT NOT NULL AUTO_INCREMENT,
Name TEXT NOT NULL,
Pass TEXT NOT NULL,
PRIMARY KEY (ID_Users)
);

CREATE TABLE Messaging
(
ID_Messaging INT NOT NULL AUTO_INCREMENT,
fk_ID_Users INT NOT NULL,
fk_ID_Conversation INT,
PRIMARY KEY (ID_Messaging),
FOREIGN KEY (fk_ID_Users) REFERENCES Users(ID_Users),
FOREIGN KEY (fk_ID_Conversation) REFERENCES Conversation(ID_Conversation)
);


CREATE TABLE Message
(
ID_Message INT NOT NULL AUTO_INCREMENT,
DateMessage datetime DEFAULT NOW(),
fk_ID_Users INT NOT NULL,
Text TEXT NOT NULL,
PRIMARY KEY (ID_Message),
FOREIGN KEY (fk_ID_Users) REFERENCES Users(ID_Users)
);


CREATE TABLE Conversation
(
ID_Conversation INT NOT NULL AUTO_INCREMENT,
Titre TEXT NOT NULL,
fk_ID_Users INT,
PRIMARY KEY (ID_Conversation),
FOREIGN KEY (fk_ID_Users) REFERENCES Users(ID_Users)
);
