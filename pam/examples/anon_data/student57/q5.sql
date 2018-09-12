truncate query5;
INSERT INTO QUERY5 (SELECT pid, pname AS pame, introdate 

					FROM product EXCEPT

					(SELECT orders.pid, pname, introdate 

					 FROM orders LEFT JOIN product ON orders.pid = product.pid) 

					ORDER BY pame ASC);





select * from query5;
