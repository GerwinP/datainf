CREATE TABLE Boek (
	isbn VARCHAR(13),
	titel VARCHAR(100),
	auteur VARCHAR(100),
	PRIMARY KEY(isbn)
);

CREATE TABLE Exemplaar (
	isbn VARCHAR(13) NOT NULL,
	volgnummer INT,
	gewicht INT,
	kastnummer INT,
	PRIMARY KEY(isbn, volgnummer),
	FOREIGN KEY(isbn) REFERENCES Boek(isbn)
		ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Boek
VALUES(1234123412341, 'Henkie', 'Josje');

INSERT INTO Boek
VALUES(2323232323231, 'Pietje', 'Gerwin');	

INSERT INTO Exemplaar
VALUES(1234123412341, 2, 1, 2);