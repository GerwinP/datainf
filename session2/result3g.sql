/*Van welke films die meer dan eens zijn uitgebracht, zijn alle tijdsduren der uitvoeringen 
verschillend?*/

SELECT m.mid, m.name FROM Movie m, Runtime r
	WHERE m.mid = r.mid
	GROUP BY m.name, m.mid
	HAVING 1 < COUNT(*) AND COUNT(*) = COUNT(DISTINCT r.runtime)
	;