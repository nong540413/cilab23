CREATE DATABASE IF NOT EXISTS unidb;
USE unidb;

CREATE TABLE student (
    STDSSN VARCHAR(11),
    STDFIRSTNAME VARCHAR(50),
    STDLASTNAME VARCHAR(50),
    STDCITY VARCHAR(50),
    STDSTATE CHAR(2),
    STDZIP CHAR(10),
    STDMAJOR CHAR(6),
    STDCLASS CHAR(2),
    STDGPA DEC(3,2),
    CONSTRAINT PKSTUDENT PRIMARY KEY (STDSSN)
);

INSERT INTO student 
(STDSSN, STDFIRSTNAME, STDLASTNAME, STDCITY, STDSTATE, STDZIP, STDMAJOR, STDCLASS, STDGPA) 
VALUES 
('123456789','HOMER','WELLS','SEATTLE','WA','981211111','IS','SO',3.0),
('124567890','BOB','NORBERT','BOTHELL','WA','980112121','FIN','JR',2.7);
