SET search_path TO a2;
TRUNCATE Query2;

INSERT INTO Query2 (
SELECT o.oid AS oid, s.pid AS pid, s.wid AS wid,
	CAST(o.quantity as NUMERIC(10,2)) AS ordqty,
	CAST(s.quantity as NUMERIC(10,2)) AS stockqty
FROM orders o, stock s
WHERE o.shipwid = s.wid AND o.quantity > s.quantity AND o.status = 'O');

SELECT * FROM Query2;

