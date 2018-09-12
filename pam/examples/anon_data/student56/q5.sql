truncate query5;
INSERT INTO Query5(SELECT pid, pname AS pame, introdate FROM product WHERE product.pid NOT IN (SELECT pid FROM orders) ORDER BY pame ASC;)





select * from query5;
