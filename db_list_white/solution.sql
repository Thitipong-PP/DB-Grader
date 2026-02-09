SELECT p_id, p_desc, p_finish, p_price
FROM product
WHERE LOWER(p_finish) LIKE '%white%';