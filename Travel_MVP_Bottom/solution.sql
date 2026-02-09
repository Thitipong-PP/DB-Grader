SELECT t.ddate, t.pname
FROM (
    SELECT ddate, pname, SUM(amt) AS all_amt
    FROM expense
    WHERE amt >= 0
    GROUP BY ddate, pname
) t
JOIN (
    SELECT ddate, MIN(all_amt) AS min_amt
    FROM (
        SELECT ddate, pname, SUM(amt) AS all_amt
        FROM expense
        WHERE amt >= 0
        GROUP BY ddate, pname
    ) x
    GROUP BY ddate
) m
ON t.ddate = m.ddate
AND t.all_amt = m.min_amt
WHERE m.min_amt > 0
ORDER BY t.ddate, t.pname;