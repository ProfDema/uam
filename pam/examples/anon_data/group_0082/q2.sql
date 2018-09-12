truncate query2;
INSERT INTO Query2 (SELECT O.oid AS oid, O.pid AS pid, O.shipwid AS wid, O.quantity AS ordqty, S.quantity AS stockqty

		    FROM orders O, stock S

		    WHERE S.quantity < O.quantity AND O.status = 'O' AND O.pid = S.pid AND O.shipwid = S.wid);





select * from query2;
