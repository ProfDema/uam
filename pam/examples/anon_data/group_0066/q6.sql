truncate query6;


INSERT INTO Query6 (

	SELECT cu.cid AS cid, cu.cname AS cname, lo.lname AS locname

	FROM customer cu JOIN location lo ON cu.lid = lo.lid

	WHERE cu.cid NOT IN (SELECT cid FROM orders GROUP BY cid)

	ORDER BY cname

);



select * from query6;
