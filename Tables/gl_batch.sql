--------------------------------------------------------
--  File created - Wednesday-January-22-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_BATCH
--------------------------------------------------------
DROP TABLE erp_gl_batch CASCADE CONSTRAINTS
/

CREATE TABLE erp_gl_batch
   (     batch_id       NUMBER(6,0)    NOT NULL
      ,	dt_created     DATE           NOT NULL
      , 	dt_posted      DATE
      ,	source_module  VARCHAR2(2)
      ,	user_id        VARCHAR2(50)   NOT NULL
      , 	post_error     CHAR(1)
   )
/