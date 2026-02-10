SELECT DISTINCT P.name, P.era, P.birth_year
FROM poets P JOIN poems O
ON P.poet_id = O.poet_id
WHERE O.written_year BETWEEN 1800 AND 1900
    AND O.lines >= 4
    AND (LOWER(O.mood) LIKE 'sad%' OR LOWER(O.mood) LIKE 'love%')
    AND LOWER(O.title) LIKE '%lonely%'
ORDER BY P.name ASC, P.era ASC, P.birth_year ASC;