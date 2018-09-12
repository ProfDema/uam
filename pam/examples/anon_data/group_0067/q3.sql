truncate query3;
insert into Query3 (select cid as cuid, cname as cuname, sum(quantity*price) as totalsale from orders natural join customer where status='S' group by cuid, cuname order by totalsale desc);







select * from query3;
