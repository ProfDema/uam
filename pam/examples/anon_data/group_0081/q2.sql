truncate query2;


INSERT into Query2

	Select o.oid as oid, o.pid as pid, o.shipwid as wid ,o.quantity as ordqty, s.quantity as stockqty

	From orders o , stock s

	Where o.quantity > s.quantity AND o.status = 'O' AND o.pid = s.pid AND o.shipwid = s.wid;





select * from query2;
