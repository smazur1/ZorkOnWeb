--------------------------------------------------------
--  File created - Saturday-April-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROOMITEM
--------------------------------------------------------

  CREATE TABLE "ORA1"."ROOMITEM" 
   (	"ROOMNUM" NUMBER(*,0), 
	"ROOMITEM" VARCHAR2(30 BYTE), 
	"ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ORA1.ROOMITEM
SET DEFINE OFF;
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (1,'dead scorpion',1);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (2,'phone',2);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (3,'spiders',3);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (4,'bats',4);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (5,'dust',5);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (5,'empty box',6);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (6,'3 walking skeletons',7);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (7,'treasure chest',8);
Insert into ORA1.ROOMITEM (ROOMNUM,ROOMITEM,ID) values (8,'piles of gold',9);
--------------------------------------------------------
--  DDL for Index PK_ROOMITEM
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA1"."PK_ROOMITEM" ON "ORA1"."ROOMITEM" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ROOMITEM
--------------------------------------------------------

  ALTER TABLE "ORA1"."ROOMITEM" ADD CONSTRAINT "PK_ROOMITEM" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ROOMITEM
--------------------------------------------------------

  ALTER TABLE "ORA1"."ROOMITEM" ADD CONSTRAINT "FK_ROOMNUM_2" FOREIGN KEY ("ROOMNUM")
	  REFERENCES "ORA1"."ROOM" ("ROOMNUM") ENABLE;
