# Solve Database Problem
[![GoDoc](https://godoc.org/github.com/google/trillian?status.svg)](https://godoc.org/github.com/google/trillian)

This is my solution of problem in database

> [!NOTE]
> 1) The problem from CEDT Grader <br>
> 2) This project in Database Class <br>

## Roadmap SQL (PostgreSQL)
I will show you the command and a small example

SELECT
```
SELECT *
FROM student;
```

WHERE
- AND
- OR
- IN
- BETWEEN
- LIKE
```
SELECT *
FROM student
WHERE score > 50;
```

ORDER BY
- DESC (max -> min)
- ASC (min -> max)
```
ORDER BY score DESC
ORDER BY id ASC
```

LIMIT / OFFSET
```
LIMIT 10
OFFSET 20
```

Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- CONCAT()

```
SELECT MAX(score)
FROM student;
```

GROUP BY
```
SELECT grade, COUNT(*)
FROM student
GROUP BY grade;
```

HAVING (Condition Group)
```
SELECT grade, COUNT(*)
FROM student
GROUP BY grade
HAVING COUNT(*) > 0;
```

JOIN (using with foreign key)
- INNER
- LEFT / RIGHT
- NATURAL
- OUTER
```
SELECT s.name, s.course_name
FROM student s
JOIN course c ON s.course_id = c.id;
```

Subquery
```
SELECT name
FROM student
WHERE score = (
    SELECT MAX(score)
    FROM student
);
```

Window Function
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
```
SELECT name, score,
    ROW_NUMBER() OVER (ORDER BY score DESC) AS rn
FROM student;
```

DISTINCT
```
SELECT DISTINCT *
FROM student
```

CASE WHEN
```
SELECT name,
CASE
    WHEN score >= 80 THEN "PASS++"
    WHEN score >= 50
    THEN "PASS"
    ELSE "NOOB"
END AS grade
FROM student
```