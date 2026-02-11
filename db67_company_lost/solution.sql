SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    ROUND(SUM(O.quantity * P.unit_price * discount)::numeric, 2) AS discount_amount
FROM
    products P JOIN
    (
        SELECT * FROM orders OE JOIN order_details OD ON OE.oid = OD.oid
    ) O ON P.pid = O.pid
GROUP BY order_year
ORDER BY order_year DESC;