drop table TB_USER_ROLES;
drop table TB_USER;
drop table role;
drop table task;

 CREATE TABLE TASK
   (  "ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
  "DESCRIPTION" VARCHAR2(255), 
  "SCORE" NUMBER(10,0) NOT NULL ENABLE, 
  "STATUS" NUMBER(10,0) NOT NULL ENABLE, 
  "TITLE" VARCHAR2(255), 
   PRIMARY KEY ("ID")
 );

  CREATE TABLE TB_USER
   (  ID NUMBER(19,0) NOT NULL ENABLE, 
  EMAIL VARCHAR2(255), 
  NAME VARCHAR2(255), 
  PASSWORD VARCHAR2(255), 
   PRIMARY KEY (ID)
   ) ;
   

CREATE TABLE ROLE
   (  "ID" NUMBER(19,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
  NAME VARCHAR2(255), 
   PRIMARY KEY ("ID")
   );
 
CREATE TABLE TB_USER_ROLES
   (	"USER_ID" NUMBER(19,0) NOT NULL ENABLE, 
	"ROLES_ID" NUMBER(19,0) NOT NULL ENABLE, 
	"USER_DTO_ID" NUMBER(19,0) NOT NULL ENABLE
   );
