truncate query9;
INSERT INTO QUERY9 (SELECT product.pid, introdate, quantity * price AS totalsales 

					FROM orders LEFT JOIN product ON orders.pid = product.pid 

					WHERE introdate < '20151231' AND status = 'S' ORDER BY introdate ASC);





select * from query9;
