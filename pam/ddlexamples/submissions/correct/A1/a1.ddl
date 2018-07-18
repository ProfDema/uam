DROP SCHEMA IF EXISTS A1 CASCADE;
CREATE SCHEMA A1;
SET search_path TO A1;

DROP TABLE IF EXISTS Customer CASCADE;
DROP TABLE IF EXISTS Video CASCADE;
DROP TABLE IF EXISTS Actor CASCADE;
DROP TABLE IF EXISTS Price CASCADE;
DROP TABLE IF EXISTS Rents CASCADE;
DROP TABLE IF EXISTS Performs CASCADE;

CREATE TABLE Customer(
    name            VARCHAR         NOT NULL,
    email           VARCHAR         PRIMARY KEY,
    phone           VARCHAR,
    totalPurchase   NUMERIC(10,2)
    );

CREATE TABLE Video(
    vID             VARCHAR         PRIMARY KEY,
    name            VARCHAR         NOT NULL,
	year            NUMERIC(4)      NOT NULL,
    COST            NUMERIC(6,2)
    );
    
CREATE TABLE Actor(
    aID             VARCHAR         PRIMARY KEY,
    name            VARCHAR         NOT NULL,
    dob             DATE
    );

CREATE TABLE Price(
    priceCode       VARCHAR         PRIMARY KEY,
    cost            NUMERIC(6,2)    NOT NULL
);

CREATE TABLE Rents(
    email           VARCHAR         NOT NULL    
                    REFERENCES Customer(email) ON DELETE CASCADE,
    vID             VARCHAR         NOT NULL
                    REFERENCES Video(vID) ON DELETE RESTRICT,
    priceCode       VARCHAR
                    REFERENCES Price(priceCode) ON DELETE RESTRICT,
    rentalFee       NUMERIC(6,2),
    lateFee         NUMERIC(6,2),
    rentDate        DATE            NOT NULL,
    dueDate         DATE            NOT NULL,
    returnDate      DATE,
    PRIMARY KEY(email,vID,rentDate)
);

CREATE TABLE Performs(
    vID             VARCHAR         NOT NULL
                    REFERENCES Video(vID) ON DELETE CASCADE,
    aID             VARCHAR         NOT NULL
                    REFERENCES Actor(aID) ON DELETE RESTRICT,
    PRIMARY KEY(vID,aID)
)