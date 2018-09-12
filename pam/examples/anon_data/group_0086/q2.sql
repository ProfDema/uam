truncate query2;


INSERT INTO Query2 (SELECT oid, o.pid, o.shipwid AS wid, CAST(o.quantity as NUMERIC(10,2)) AS ordqty, CAST(s.quantity as NUMERIC(10,2))  AS stockqty

FROM stock s JOIN orders o ON s.wid=o.shipwid AND s.pid=o.pid

WHERE o.quantity>s.quantity AND status='O' AND o.quantity>0

);



select * from query2;
