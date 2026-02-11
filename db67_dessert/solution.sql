SELECT C.name, O.total
FROM (
    SELECT OD.c_id, SUM(DS.price * OD.amount) AS total
    FROM desserts DS JOIN orders OD
    ON DS.id = OD.d_id
    GROUP BY c_id
) O JOIN customers C ON O.c_id = C.id
ORDER BY O.total DESC, C.id ASC
LIMIT 1;