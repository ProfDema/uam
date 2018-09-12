truncate query7;


-- SELECT period, sales, cost FROM orders;

INSERT INTO Query7 ( SELECT o.exdate period, SUM(o.sales) AS sales, SUM(p.cost * o.quantity) AS cost FROM (SELECT extract(year from odate)*100 + extract(month from odate) AS exdate, sum(price*quantity) AS sales, status, pid, quantity FROM orders GROUP BY pid, odate, status, quantity) o NATURAL JOIN product p WHERE o.status = 'S' GROUP BY period ORDER BY period );



select * from query7;
