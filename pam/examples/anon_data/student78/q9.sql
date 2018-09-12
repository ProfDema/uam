truncate query9;


CREATE VIEW oldproduct AS

	SELECT *

	FROM product P

	WHERE P.introdate <= CAST('2015-12-31' as DATE);



INSERT INTO Query9(

	SELECT P.pid, P.introdate, CAST(SUM(O.price * O.quantity) as NUMERIC(12,2)) AS totalsales

	FROM oldproduct P, orders O

	WHERE P.pid = O.pid AND O.status = 'S'

	GROUP BY P.pid, P.introdate

	ORDER BY P.introdate ASC

	);



DROP VIEW oldproduct;



select * from query9;
