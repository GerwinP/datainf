CREATE TABLE IF NOT EXISTS Bestelling (
	isbn VARCHAR(13) NOT NULL,
	aantal INT NOT NULL,
	FOREIGN KEY (isbn) REFERENCES Boek(isbn)
);

CREATE TRIGGER voeg_bestelling_toe 
	after insert on Boek
	for each statement
	when (SELECT * FROM OLD WHERE auteur = NEW.auteur)
	begin
		insert into Bestelling
		Values(new.isbn, 1)
	end
;
