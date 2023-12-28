--------------------------------------------------------
--  File created - Thursday-December-28-2023
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BINH_LUAN
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."BINH_LUAN"
   (	"NGAY_BINH_LUAN" DATE,
	"NOI_DUNG" VARCHAR2(255 BYTE),
	"BINH_LUAN_ID" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE ,
	"NGUOI_DUNG_ID" NUMBER,
	"HINH_ID" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.BINH_LUAN
SET DEFINE OFF;
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('01-JAN-23','DD-MON-RR'),'Great photo!',10,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('02-JAN-23','DD-MON-RR'),'Nice shot!',11,21,20);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('03-JAN-23','DD-MON-RR'),'Beautiful picture!',12,22,21);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('01-JAN-23','DD-MON-RR'),'Great photo!',21,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('02-JAN-23','DD-MON-RR'),'Nice shot!',22,21,20);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('03-JAN-23','DD-MON-RR'),'Beautiful picture!',23,22,21);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('01-JAN-23','DD-MON-RR'),'Great photo!',24,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('02-JAN-23','DD-MON-RR'),'Nice shot!',25,21,20);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('03-JAN-23','DD-MON-RR'),'Beautiful picture!',26,22,21);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('01-JAN-23','DD-MON-RR'),'Great photo!x',27,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'a!',44,null,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'a!',45,null,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'a!',46,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'a!',47,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',48,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',49,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',50,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',51,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',52,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',53,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',61,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',81,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',82,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',83,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',84,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',85,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',86,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',87,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',88,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',89,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('25-DEC-23','DD-MON-RR'),'acc!',90,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('26-DEC-23','DD-MON-RR'),'acc!',91,1,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('28-DEC-23','DD-MON-RR'),'aa',111,53,19);
Insert into SYSTEM.BINH_LUAN (NGAY_BINH_LUAN,NOI_DUNG,BINH_LUAN_ID,NGUOI_DUNG_ID,HINH_ID) values (to_date('28-DEC-23','DD-MON-RR'),'aa',112,53,19);
--------------------------------------------------------
--  DDL for Index PK_118e89e2856828bdfba03d20e91
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_118e89e2856828bdfba03d20e91" ON "SYSTEM"."BINH_LUAN" ("BINH_LUAN_ID")
  PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table BINH_LUAN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BINH_LUAN" MODIFY ("NGAY_BINH_LUAN" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BINH_LUAN" MODIFY ("NOI_DUNG" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BINH_LUAN" MODIFY ("BINH_LUAN_ID" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."BINH_LUAN" ADD CONSTRAINT "PK_118e89e2856828bdfba03d20e91" PRIMARY KEY ("BINH_LUAN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BINH_LUAN
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."BINH_LUAN" ADD CONSTRAINT "FK_25cca72d338fd1d6104017a00ba" FOREIGN KEY ("NGUOI_DUNG_ID")
	  REFERENCES "SYSTEM"."NGUOI_DUNG" ("NGUOI_DUNG_ID") ENABLE;
  ALTER TABLE "SYSTEM"."BINH_LUAN" ADD CONSTRAINT "FK_6f857eb50e1f278546c8620fe6a" FOREIGN KEY ("HINH_ID")
	  REFERENCES "SYSTEM"."HINH_ANH" ("HINH_ID") ENABLE;
