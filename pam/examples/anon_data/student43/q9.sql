truncate query9;


INSERT INTO Query9 (SELECT P.pid, introdate AS date, SUM(quantity*price) AS totalsales FROM product P, orders O WHERE P.pid=O.pid AND introdate <= date '2017-12-31' AND status='S' GROUP BY P.pid ORDER BY date ASC);



select * from query9;
