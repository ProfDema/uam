truncate query9;
INSERT INTO Query9(

SELECT p.pid as pid , introdate as date, SUM(price*quantity) as totalsales --date is key word,

FROM product p JOIN orders o

ON p.pid = o.pid

WHERE introdate <= '20151231'

GROUP BY p.pid

ORDER BY introdate ASC

);







select * from query9;
