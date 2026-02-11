SELECT C.first_name
FROM
(
    SELECT 
        cus_id,
        SUM(total_spent) AS total, 
        COUNT(id) AS total_biset
    FROM invoice
    GROUP BY cus_id
) O JOIN customer C ON O.cus_id = C.cus_id
ORDER BY O.total DESC, O.total_biset ASC, C.cus_id ASC
LIMIT 1;