truncate query10;
CREATE VIEW shipped as

SELECT oid, shipwid, quantity, price

FROM orders

WHERE status = 'S';



CREATE VIEW allwarehouse as

SELECT w.lid as lid, l.lname as lname, w.wid as wid

FROM warehouse w, location l

WHERE w.lid = l.lid;



CREATE VIEW nosales as

SELECT wid

FROM allwarehouse

EXCEPT

SELECT shipwid as wid

FROM shipped;



CREATE VIEW nosalesloc as

SELECT w.lid as lid

FROM nosales n, warehouse w

WHERE n.wid = w.wid;



CREATE VIEW nosaleslocfull as

SELECT n.lid as lid, l.lname as lname, 0 as totalsales

FROM nosalesloc n, location l

WHERE n.lid = l.lid;



CREATE VIEW shippedloc as 

SELECT a.lid as lid, a.lname as lname, s.quantity*s.price as totalsales 

FROM shipped s, allwarehouse a

WHERE s.shipwid = a.wid

GROUP BY a.lid, a.lname, s.quantity, s.price;



CREATE VIEW together as

SELECT * FROM nosaleslocfull

UNION

SELECT * FROM shippedloc;



insert into query10(

SELECT *

FROM together

ORDER BY lname ASC); 





drop view shipped, allwarehouse, nosales, nosalesloc, nosaleslocfull, shippedloc CASCADE;



select * from query10;
