truncate query6;
INSERT INTO Query6 (SELECT C.cid as cid, C.cname as cname, L.lname as locname

                    FROM customer C, location L

                    WHERE C.lid = l.lid AND C.cid NOT in

                      (SELECT cid

                       FROM orders O

                       )

		    ORDER BY C.cname ASC);









select * from query6;
