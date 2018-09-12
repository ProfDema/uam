truncate query1;
SET search_path TO A2;

CREATE VIEW r1 AS

SELECT custid AS cuid, cname AS cuname, custref AS refid

FROM referral INNER JOIN customer ON custid = cid;



CREATE VIEW r2 AS

SELECT cuid, cuname, refid, cname AS refname

FROM r1 INNER JOIN customer ON refid = cid

ORDER BY cuname ASC;



INSERT INTO query1(SELECT * FROM r2);



DROP VIEW IF EXISTS r2;

DROP VIEW IF EXISTS r1;



select * from query1;
