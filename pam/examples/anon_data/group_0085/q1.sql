truncate query1;
CREATE VIEW mytable AS

    SELECT C1.cid AS cuid, C1.cname AS cuname, C2.cid AS refid, C2.cname AS refname, R.custid, R.custref

    FROM customer C1, customer C2, referral R

    WHERE C1.cid = R.custref AND C2.cid = R.custid;



INSERT INTO QUERY1

    (SELECT cuid, cuname, refid, refname

    FROM mytable

    ORDER BY cuname ASC);



DROP VIEW mytable;



select * from query1;
