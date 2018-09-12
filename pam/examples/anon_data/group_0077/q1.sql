truncate query1;


SET search_path TO A2;









INSERT INTO Query1 

			SELECT RferCust.cid AS cuid, RferCust.cname AS cuname, RferdCust.cid AS refid, RferdCust.cname AS refname

FROM Customer RferCust,Customer RferdCust,Referral Rfl

WHERE RferCust.cid = Rfl.custid AND RferdCust.cid = Rfl.custref 

ORDER BY refName ASC;









select * from query1;
