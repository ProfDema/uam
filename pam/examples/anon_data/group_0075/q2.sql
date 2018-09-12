truncate query2;


INSERT INTO Query2 (SELECT o.oid, o.pid, s.wid, o.quantity AS "ordqty", s.quantity AS "stockqty"

		  	 FROM orders o, stock s

		   	WHERE o.pid = s.pid AND o.quantity > s.quantity AND o.shipwid = s.wid);



select * from query2;
