truncate query2;
INSERT INTO query2(

    SELECT o.oid, o.pid, s.wid, o.quantity, s.quantity

    FROM stock s, orders o

    WHERE o.status = 'O' AND o.shipwid = s.wid AND 

	o.pid = s.pid AND o.quantity > s.quantity);





select * from query2;
