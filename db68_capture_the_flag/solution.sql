SELECT *
FROM blog
WHERE
    (body LIKE '%FLAG{%' OR body LIKE '%flag{%')
    AND body LIKE '%}%'
ORDER BY bid ASC;