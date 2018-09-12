truncate query3;
--



INSERT INTO Query3(

   SELECT cid, cname, sum(price*quantity) as totalsales

   FROM (SELECT * FROM orders WHERE status='S') as orders 

        NATURAL JOIN customer

   GROUP BY cid, cname

   ORDER BY totalsales DESC);

   

select * from query3;
