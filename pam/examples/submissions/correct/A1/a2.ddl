DROP SCHEMA IF EXISTS A2 CASCADE;
CREATE SCHEMA A2;
SET search_path TO A2;

DROP TABLE IF EXISTS location CASCADE;
DROP TABLE IF EXISTS warehouse CASCADE;
DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS referral CASCADE;
DROP TRIGGER IF EXISTS insert_referral_trigger ON referral CASCADE;
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS stock CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS Query1 CASCADE;
DROP TABLE IF EXISTS Query2 CASCADE;
DROP TABLE IF EXISTS Query3 CASCADE;
DROP TABLE IF EXISTS Query4 CASCADE;
DROP TABLE IF EXISTS Query5 CASCADE;
DROP TABLE IF EXISTS Query6 CASCADE;
DROP TABLE IF EXISTS Query7 CASCADE;
DROP TABLE IF EXISTS Query8 CASCADE;
DROP TABLE IF EXISTS Query9 CASCADE;
DROP TABLE IF EXISTS Query10 CASCADE;

CREATE TABLE location(
    lid         INTEGER     PRIMARY KEY,
    lname       VARCHAR     NOT NULL,
	laddress    VARCHAR     NOT NULL
    );

CREATE TABLE warehouse(
    wid         INTEGER     PRIMARY KEY,
    wname       VARCHAR     NOT NULL,
	lid         INTEGER     REFERENCES location(lid) ON DELETE RESTRICT
    );
    
CREATE TABLE customer(
    cid         INTEGER     PRIMARY KEY,
    cname       VARCHAR     NOT NULL,
    lid         INTEGER     REFERENCES location(lid) ON DELETE RESTRICT
    );

CREATE TABLE referral (
    custid 	    INTEGER 	REFERENCES customer(cid) ON DELETE RESTRICT,
    custref 	INTEGER 	REFERENCES customer(cid) ON DELETE RESTRICT, 
    commission	NUMERIC(6,2),
	PRIMARY KEY(custid, custref));	
	
CREATE TABLE product(
    pid         INTEGER     PRIMARY KEY,
    pname       VARCHAR     NOT NULL,
    introdate   DATE        NOT NULL,
	um          VARCHAR     NOT NULL,
	cost        NUMERIC(6, 2) NOT NULL
    );	
	
CREATE TABLE stock(
    pid         INTEGER           REFERENCES product(pid) ON DELETE RESTRICT,
	wid         INTEGER           REFERENCES warehouse(wid) ON DELETE RESTRICT,
    quantity    NUMERIC(10, 2)     NOT NULL,
    PRIMARY KEY(pid, wid));

CREATE TABLE orders(
    oid         SERIAL      PRIMARY KEY,
    cid         INTEGER     REFERENCES customer(cid) ON DELETE RESTRICT,
    pid         INTEGER     REFERENCES product(pid) ON DELETE RESTRICT,
	odate       DATE        NOT NULL,
	shipwid     INTEGER     REFERENCES warehouse(wid) ON DELETE RESTRICT,
	quantity    NUMERIC(10, 2) NOT NULL,
	price       NUMERIC(6, 2) NOT NULL,
	status      VARCHAR     NOT NULL,
	CHECK (status = 'O' OR status = 'S'));

CREATE TABLE query1(
    cuid     INTEGER,
    cuname   VARCHAR,
    refid    INTEGER,
    refname  VARCHAR    
);

CREATE TABLE query2(
    oid   INTEGER,
    pid   INTEGER,
    wid   INTEGER,
    ordqty NUMERIC(10,2),
    stockqty NUMERIC(10,2)    
);

CREATE TABLE query3(
    cuid    INTEGER,
    cuname  VARCHAR,
    totalsales   NUMERIC(12,2)
);

CREATE TABLE query4(
    pid     INTEGER,
    pname   VARCHAR,
    totalcost NUMERIC(12,2)	
);

CREATE TABLE query5(
    pid      INTEGER,
    pname    VARCHAR,
    introdate DATE
);

CREATE TABLE query6(
    cid    INTEGER,
    cname   VARCHAR,
    locname VARCHAR	
);

CREATE TABLE query7(
    period    INTEGER,
    sales     NUMERIC(10,2),
	cost      NUMERIC(10,2)
);

CREATE TABLE query8(
    cid  INTEGER,
    cname  VARCHAR,
    comission   NUMERIC(10,2)   
);

CREATE TABLE query9(
    pid       INTEGER,
    date      DATE,
	totalsales NUMERIC(10,2)
);

CREATE TABLE query10(
    lid       INTEGER,
	lname VARCHAR,
	totalsales NUMERIC(12,2)
);
