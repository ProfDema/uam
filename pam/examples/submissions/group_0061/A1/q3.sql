truncate query3;


INSERT INTO QUERY3 (

SELECT cu.cid AS cuid, cu.cname AS cuname, SUM(quantity*price) AS totalsales 

FROM customer cu JOIN orders ord ON cu.cid = ord.cid 

WHERE ord.status = 'S' 

GROUP BY cu.cid HAVING SUM(quantity*price) > 0 

ORDER BY totalsales DESC);



select * from query3;
