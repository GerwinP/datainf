SELECT p.name FROM person p, writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS(
		SELECT * FROM Directs d, Movie m
			WHERE w.mid = d.mid
			AND m.mid = d.mid
			
		)
;

SELECT p.name FROM Person p, Writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS (
		
	)
	geen enkele film regiseur heeft