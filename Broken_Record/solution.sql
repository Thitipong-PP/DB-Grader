SELECT COALESCE(u.studentid, c.studentid) AS studentid,
COALESCE(u.pname, c.pname) AS pname, C.cname
FROM userinfo U JOIN clubreg C
ON U.studentid = C.studentid OR U.pname = C.pname
ORDER BY U.studentid DESC;