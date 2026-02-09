SELECT name
FROM student
WHERE score > 0
ORDER BY score DESC, id ASC
LIMIT 1;