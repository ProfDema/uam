truncate query2;


INSERT INTO Query2(

	SELECT oid, O.pid, wid, O.quantity AS ordqty, S.quantity AS stockqty

	FROM orders O, stock S

	WHERE O.pid = S.pid AND O.shipwid = S.wid AND O.quantity > S.quantity AND O.status = 'O'

	);





select * from query2;
