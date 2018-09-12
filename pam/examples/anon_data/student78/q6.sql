truncate query6;


INSERT INTO Query6(

	SELECT C.cid, C.cname, L.lname

	FROM customer C NATURAL JOIN location L

	WHERE C.cid NOT IN (SELECT cid from orders) AND C.lid = L.lid

	GROUP BY C.cid, L.lname

	ORDER BY C.cname ASC

	);



select * from query6;
