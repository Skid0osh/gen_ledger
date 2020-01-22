--------------------------------------------------------
--  File created - Friday-January-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_ACCOUNT
--------------------------------------------------------
DROP TABLE erp_gl_account
/

CREATE TABLE erp_gl_account 
(	  gl_acct_id    NUMBER(8,0)
  , descript      VARCHAR2(30)
  , acct_type     VARCHAR2(3)
  , dt_deleted    DATE
  , user_id       VARCHAR2(50)  NOT NULL
  , dt_edited     DATE          NOT NULL
)
/