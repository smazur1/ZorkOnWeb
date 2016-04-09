--------------------------------------------------------
--  File created - Saturday-April-09-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROOM
--------------------------------------------------------

  CREATE TABLE "ORA1"."ROOM" 
   (	"ROOMNUM" NUMBER(*,0), 
	"NAME" VARCHAR2(20 BYTE), 
	"WHERECANGO" VARCHAR2(150 BYTE), 
	"MONEY" NUMBER(5,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ORA1.ROOM
SET DEFINE OFF;
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (0,'START','1',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (1,'foyer','(N)orth to the Front Room, (S) to exit the house, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (2,'front room','(W) to the Library, (S) to the Foyer, (E) to the kitchen, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (3,'library','(N) to the Dining Room, (E) to the Front Room, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (4,'kitchen','(W) to the Front Room, (N) to the Parlor, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (5,'dining room','(S) to the Library, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (6,'vault','(E) to the Parlor, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (7,'parlor','(W) to the Vault, or (L) to view the totals.',0);
Insert into ORA1.ROOM (ROOMNUM,NAME,WHERECANGO,MONEY) values (8,'secret room','(W) to the Vault, or (L) to view the totals.',0);
--------------------------------------------------------
--  DDL for Index SYS_C0010977
--------------------------------------------------------

  CREATE UNIQUE INDEX "ORA1"."SYS_C0010977" ON "ORA1"."ROOM" ("ROOMNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ROOM
--------------------------------------------------------

  ALTER TABLE "ORA1"."ROOM" ADD PRIMARY KEY ("ROOMNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
