truncate query8;
CREATE VIEW referrals AS SELECT * FROM customer NATURAL JOIN referral WHERE customer.cid = referral.custid;

CREATE VIEW sales as SELECT referrals.cid, referrals.cname, sum(commission*quantity*price)

    FROM referrals JOIN orders ON referrals.custref = orders.cid

    GROUP BY(cname, referrals.cid);

INSERT INTO QUERY8 (SELECT * FROM sales ORDER BY cname ASC);

DROP VIEW sales;

DROP VIEW referrals;





select * from query8;
