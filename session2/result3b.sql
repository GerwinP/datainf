SELECT  p.pid FROM Person p JOIN Acts a, Movie m
	WHERE a.pid = p.pid
	AND m.mid = a.mid
	AND m.name = 'Back to the Future'
;