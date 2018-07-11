SET search_path TO a2;

TRUNCATE Query8;

   
-- Query 8
-- cid, cname, commission
-- see post in piazza that explains calculation
 INSERT INTO Query8(SELECT customer.cid, customer.cname, SUM(commission.commission)
   FROM
     (SELECT custid as cid, (commission*orders.sales/100) AS commission
      FROM referral NATURAL JOIN
          (SELECT cid as custref, (quantity*price) AS sales
          FROM orders) AS orders) AS commission
     NATURAL JOIN customer
     GROUP BY customer.cid, customer.cname
     ORDER BY customer.cid);


SELECT * FROM Query8;
