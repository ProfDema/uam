truncate query9;
insert into Query9 (select pid, introdate as date, price*quantity as totalsales from orders natural join product where introdate <= '2015/12/31' and status = 'S' order by introdate asc);





select * from query9;
