SELECT p.name FROM person p, writes w
	WHERE p.pid = w.pid
	AND NOT EXISTS(
		SELECT * FROM Directs d
			WHERE w.mid = d.mid
		)
;