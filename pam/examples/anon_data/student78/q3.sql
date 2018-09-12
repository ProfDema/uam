truncate query3;


CREATE VIEW ordtotalsales AS

        SELECT cid AS cuid, CAST((price * quantity) as NUMERIC(12,2)) AS totalsales, status

        FROM orders

        GROUP BY cuid, totalsales, status;



INSERT INTO Query3(

	SELECT cuid, C.cname AS cuname, SUM(totalsales) AS totalsales

	FROM ordtotalsales, customer C

	WHERE cuid = C.cid AND status = 'S'

	GROUP BY cuid, cuname

	ORDER BY totalsales DESC

	);



DROP VIEW ordtotalsales;





select * from query3;
