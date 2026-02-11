SELECT 
    P.name,
    P.unit_price
FROM product P
WHERE (P.category_name = 'food' OR P.category_name = 'drink')
AND P.unit_price > 2000
ORDER BY P.unit_price DESC;