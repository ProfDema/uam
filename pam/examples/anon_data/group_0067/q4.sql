truncate query4;
insert into Query4 (select pid, pname as pame, sum(cost*quantity) as totalcost from product natural join orders where status='S' group by pid order by totalcost asc);





select * from query4;
