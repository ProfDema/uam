truncate query3;
INSERT INTO Query3 (SELECT C.cid AS cuid, C.cname AS cuname,  SUM(O.quantity * O.price) AS totalsales

                    FROM customer AS C, orders AS O

                    WHERE C.cid = O.cid AND O.status = 'S'

                    GROUP BY C.cid

                    ORDER by totalsales DESC

                  );







select * from query3;
