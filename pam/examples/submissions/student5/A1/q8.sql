truncate query8;


CREATE VIEW temp AS (

SELECT ref.custid AS cid, SUM(ord.price * ord.quantity * ref.commission) AS commission 

FROM referral ref JOIN ORDERS ord ON ref.custref = ord.cid 

GROUP BY ref.custid HAVING SUM(ord.price * ord.quantity * ref.commission) > 0); 



INSERT INTO QUERY8 (SELECT temp.cid, c.cname, temp.commission FROM customer c JOIN temp ON c.cid = temp.cid ORDER BY c.cname ASC);



DROP VIEW temp; 



select * from query8;
