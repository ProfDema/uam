truncate query7;
insert into Query7 (select cast(to_char(odate, 'yyyymm') as integer) as period, sum(price*quantity) as sales, sum(cost*quantity) as cost from orders natural join product group by period, price order by period asc);





select * from query7;
