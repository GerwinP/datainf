SELECT p.name FROM person p, writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS(
		SELECT * FROM Directs d, Writes W, Movie m
			WHERE w.mid = d.mid
			AND w.pid = p.pid
			AND w.mid = m.mid
		)
;

