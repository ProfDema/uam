truncate query5;
insert into Query5(select pid, pname,introdate from product where pid not in (select pid from orders) order by pname ASC);





select * from query5;
