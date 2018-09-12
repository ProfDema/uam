truncate query10;


Create View kenny as

	Select l.lid as lid, l.lname as lname, o.shipwid as wid, sum(o.price*o.quantity) as totalsales

	FROM product p, orders o, warehouse w, location l

	Where p.pid = o.pid AND o.status = 'S' AND w.wid = o.shipwid AND l.lid = w.lid

	Group By o.shipwid, l.lid;



Create View kenny2 as

	Select wid From warehouse 

	EXCEPT

	Select wid From kenny;



Create View kenny4 as

	select w.lid

	From kenny2 k, warehouse w

	where k.wid = w.wid;



Create View kenny3 as

	Select l.lid , l.lname, 0 as totalsales

	From kenny4 k4 , location l

	Where l.lid = k4.lid;



INSERT INTO Query10

	Select lid,lname,totalsales from kenny UNION select * from kenny3

	Order By lname;

	

DROP view kenny3 , kenny4, kenny2, kenny;





select * from query10;
