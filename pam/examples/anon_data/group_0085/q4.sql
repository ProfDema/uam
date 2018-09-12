truncate query4;
CREATE VIEW sales AS SELECT * FROM product NATURAL JOIN orders WHERE status = 'S';

CREATE VIEW costs AS SELECT pid, pname, sum(cost * quantity) AS totalcost FROM sales GROUP BY (pid, pname);

INSERT INTO QUERY4 (SELECT * FROM costs ORDER BY totalcost ASC);

DROP VIEW costs;

DROP VIEW sales;



select * from query4;
