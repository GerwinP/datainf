/*Geef voor iedere acteur het aantal films waarin hij acteert, mits deze acteur minimaal in 4
films acteert en minimaal 1 keer een rating van 9 of hoger heeft behaald.*/

SELECT p.name, COUNT(m.mid) FROM Person p, Movie m, Acts a
	WHERE p.pid = a.pid
	AND m.mid = a.mid
	GROUP BY p.pid, p.name
	HAVING 4 <= COUNT(m.mid) AND MAX(m.rating) >= 9
	;
	
/*SELECT p.name, COUNT(DISTINCT m.mid) FROM Person p, Movie m, Acts a
	WHERE p.pid = a.pid
	AND m.mid = a.mid
	AND m.rating >= 9*/
	;