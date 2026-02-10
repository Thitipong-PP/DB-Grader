SELECT M.mid, M.title, O.total_views
FROM 
(
    SELECT mid, COUNT(*) AS total_views
    FROM customer
    GROUP BY mid
) O JOIN movie M
ON O.mid = M.mid
WHERE O.total_views > 1 AND
    O.total_views = (
        SELECT O.total_views
        FROM (
            SELECT mid, COUNT(*) AS total_views
            FROM customer
            GROUP BY mid
        ) O JOIN movie M
        ON O.mid = M.mid
        ORDER BY O.total_views DESC
        LIMIT 1
    )
ORDER BY M.title ASC