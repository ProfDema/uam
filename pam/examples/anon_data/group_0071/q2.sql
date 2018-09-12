truncate query2;
INSERT INTO Query2 (

SELECT 

	o.oid as oid,

	o.pid as pid,

	w.wid as wid,

	o.quantity as ordqty,

	s.quantity as stockqty

FROM warehouse w, stock s, orders o

WHERE

	w.wid = s.wid AND

	s.pid = o.pid AND

	o.status = 'O' AND 

	o.quantity >  s.quantity

);





select * from query2;
