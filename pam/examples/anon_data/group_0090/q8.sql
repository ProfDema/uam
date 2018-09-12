truncate query8;
INSERT INTO Query8 (SELECT C.cid as cid, C.cname as cname, SUM(O.quantity * O.price * R.commission) as commisssion

                    FROM customer C, orders O, referral R

                    WHERE C.cid = R.custid AND O.cid = R.custref

                    GROUP BY C.cid

                    ORDER BY C.cname ASC);









select * from query8;
