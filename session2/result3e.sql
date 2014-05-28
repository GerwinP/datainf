
SELECT 	p.name, MIN(m.year) FROM Directs d, Movie m, Person p, Genre g
	WHERE m.mid = d.mid
	AND g.mid = m.mid
	AND d.pid = p.pid
	AND g.genre = 'Action'
	GROUP BY p.pid, p.name
	HAVING 2 <= COUNT(m.mid) 
	;
	

/*SELECT p.name, MIN(m.year)
FROM Person p, Genre g, Movie m, Directs d
WHERE g.genre = 'Action'
AND g.mid=m.mid 
AND m.mid=d.mid 
AND d.pid=p.pid
GROUP BY p.pid, p.name
HAVING 2 <= COUNT(m.mid);*/


/*Geef voor ieder die minstens 2 actiefilms heeft geregisseerd, het jaartal waarin hij dat 
voor het eerst deed.*/