truncate query10;


create view q10 as (select shipwid, SUM(quantity*price) as sales from orders GROUP BY shipwid);

INSERT into query10 (select location.lid, location.lname, sales from warehouse, q10, location where wid = shipwid order by location.lname ASC);

drop view q10;





select * from query10;
