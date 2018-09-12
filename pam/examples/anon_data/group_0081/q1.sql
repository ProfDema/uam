truncate query1;
INSERT into Query1 

	Select R1.custref as refid ,C2.cname as refname , R1.custid as cuid ,C1.cname as cuname 

	From referral R1 , customer C1, customer C2

	Where R1.custid=C1.cid AND R1.custref=C2.cid

	Order By C2.cname;



select * from query1;
