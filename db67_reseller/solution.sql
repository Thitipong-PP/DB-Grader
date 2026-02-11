SELECT 
    P.pname,
    P.pprice,
    SUM(PS.quantity_sold) AS total_sales
FROM
    product P JOIN product_sales PS
    ON P.pid = PS.pid
WHERE
    (PS.sale_date BETWEEN '2022-1-1' AND '2025-1-1')
GROUP BY P.pid
HAVING SUM(PS.quantity_sold) <= 100
ORDER BY total_sales DESC, P.pprice ASC, P.pname ASC
LIMIT 3;