truncate query5;


CREATE VIEW ordered AS (SELECT DISTINCT orders.pid FROM orders);

CREATE VIEW difference AS ((SELECT product.pid FROM product) EXCEPT (SELECT * FROM ordered));



INSERT INTO QUERY5 (SELECT product.pid, product.pname, product.introdate FROM difference JOIN product ON difference.pid = product.pid ORDER BY pname ASC);



DROP VIEW difference;

DROP VIEW ordered;

select * from query5;
