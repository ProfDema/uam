truncate query3;
INSERT INTO Query3 (cuid, cuname, totalsales)

SELECT cid, customer.name, SUM(orders.price * orders.quantity) AS totalsales

FROM orders INNER JOIN customer ON orders.cid = customer.cid

WHERE orders.status = "S"

GROUP BY cid, customer.name

ORDER BY totalsales ASC;





select * from query3;
