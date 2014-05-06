--- Task a ---
INSERT INTO F (x, y, violation, motivation) VALUES('ABC', 'EF', 0, 'Als je ABC weet, weet je E, en als je E weet, weet je D');
INSERT INTO F (x, y, violation, motivation) VALUES('E', 'D', 1, 'Als je E weet, weet je alleen D en A, maar niet de rest');
INSERT INTO F (x, y, violation, motivation) VALUES('D', 'A', 1, 'Als je D weet, weet je alleen A');
--- Task b ---
INSERT INTO F1(x, y, violation, motivation) VALUES('E', 'D', 0, 'Er zit verder niks in, dus het is geen violation');
INSERT INTO F2(x, y, violation, motivation) VALUES('ABC', 'EF', 0, 'Dit was al geen violation');