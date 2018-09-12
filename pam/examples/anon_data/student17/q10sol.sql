truncate query10;
-- lid, lname, totalsales

-- note here we take outer join as explained in piazza and course web site.

INSERT INTO Query10(

   SELECT location.lid, location.lname, salesloc.sales

   FROM location NATURAL FULL OUTER JOIN

   (SELECT customer.lid AS lid, orders.sales AS sales

    FROM customer NATURAL JOIN

        (SELECT cid, (quantity*price) AS sales 

		FROM orders WHERE status = 'S') as orders) AS salesloc

   ORDER BY location.lname);
select * from query10;
