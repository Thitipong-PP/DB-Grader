SELECT U.name
FROM (
    SELECT ssn, SUM(push_count) AS all_push
    FROM workout
    GROUP BY ssn
) W JOIN users U
ON W.ssn = U.ssn
WHERE U.sex = 'F'
AND U.age BETWEEN 22 AND 60
AND W.all_push >= 40
ORDER BY W.all_push DESC, U.ssn ASC
LIMIT 5;