truncate query8;


INSERT INTO Query8 (SELECT O.cid AS cid, cname, SUM(quantity*price*commission) AS commission FROM orders O, customer C, referral R WHERE O.cid=c.cid AND c.cid=R.custid AND R.custref<>NULL GROUP BY O.cid, cname ORDER BY cname ASC);



select * from query8;
