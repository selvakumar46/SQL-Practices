create table studies(PNAME VARCHAR2(20),SPLACE VARCHAR2(15),COURSE VARCHAR(15),CCOST NUMBER);
DESCRIBE studies;
INSERT INTO studies VALUES('ANAND','SABARI','PGDCA',4500);
INSERT INTO studies VALUES('RAMESH','CSDI','DCA',7200);
INSERT INTO studies VALUES('JAYAKUMAR','BITS','MCA',42000);
INSERT INTO studies VALUES('KAMALA','PRAGATHI','DCP',5000);
INSERT INTO studies VALUES('MARY','SABARI','PGDCA',4500);
INSERT INTO studies VALUES('NELSON','PRAGATHI','DAP',6200);
INSERT INTO studies VALUES('SAKU','APPPLE','HDCP',14000);
INSERT INTO studies VALUES('REBECCA','BRILLIAN','DCAP',11000);
INSERT INTO studies VALUES('SAVITHA','BDRS','DC',6000);
INSERT INTO studies VALUES('REVATHI','SABARI','DAP',5000);
INSERT INTO studies VALUES('VIJAYA','BDPS','DCA',48000);
INSERT INTO studies VALUES('RAVI','PRAGATHI','DCAP',5200);

SELECT * FROM STUDIES;
COMMIT;