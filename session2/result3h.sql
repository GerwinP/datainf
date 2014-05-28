/*Rangschik de regisseurs, in dalende volgorde, naar het aantal films waarin zij geacteerd 
hebben. Sla diegene over die nooit geacteerd hebben, en geef sowieso alleen maar de top 3. 
[Resultaat: Charles Chaplin 4 , Orson Welles 3 , Woody Allen 3 ]*/

SELECT p.name, COUNT(DISTINCT a.mid) AS score FROM Person p, movie m, directs d, acts a
	WHERE p.pid = d.pid
	AND a.pid = d.pid
	GROUP BY p.pid, p.name
	ORDER BY score DESC
	LIMIT 3
	;
	
	