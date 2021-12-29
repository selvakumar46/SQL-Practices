create table software(PNAME  VARCHAR2(20),TITLE  VARCHAR2(30),DEV_IN VARCHAR2(10),
 SCOST  NUMBER,DCOST  NUMBER, SID    NUMBER);
 describe software;
insert into software values('Anand','PARACHUTES','BASIC',400,6000,43);
insert into software values('Anand','VIDEO TITLING PACK','PASCAL',7500,16000,89);
insert into software values('RAMESH','INVENTORY CONTROL SYSTEM','COBOL',3000,3500,0);
insert into software values('KAMALA','PAYROLL PACKAGE','DBASE',9000,20000,7);
insert into software values('MARY','FINACIAL ACC S/W','ORACLE',18000,85000,4);
insert into software values('MARY','CODE GENERATION','C',4500,20000,23);
insert into software values('JAYAKUMAR','READ ME ','C++',300,1200,84);
insert into software values('SAKU','BOMBS AWAY','ASSEMBLY',750,5000,11);
insert into software values('SAKU','VACCINES','C',1900,3400,21);
insert into software values('RAMESH','HOTEL MANAGEMENT','DBASE',12000,35000,4);
insert into software values('REBECCA','PC UTILITIES','C',725,5000,51);
insert into software values('KAMALA','DEAD LEE','PASCAL',600,4500,73);
insert into software values('SAVITHA','TSR HELP PACKAGE','ASSEMBLY',2500,600,6);
insert into software values('REVATHI','HOSPITAL MANAGEMENT','PASCAL',1100,75000,2);
insert into software values('VIJAYA','ISK EDITOR','C',900,700,6);
insert into software values('RAVI','INVOICES','ORACLE',700,20000,10);
insert into software values('NELSON','MISSILE TECH','C++',5000,7500,25);


select * from software;

COMMIT;

