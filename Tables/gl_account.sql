--------------------------------------------------------
--  File created - Friday-January-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_ACCOUNT
--------------------------------------------------------
CREATE TABLE erp_gl_account 
(	gl_acct_id    NUMBER(8,0)
  , descript    VARCHAR2(30)
  , acct_type   VARCHAR2(3)
  , change_user VARCHAR2(50)
  , change_dt   DATE
)
/
--------------------------------------------------------
--  Constraints for Table ERP_GL_ACCOUNT
--------------------------------------------------------
  ALTER TABLE erp_gl_account MODIFY (gl_acct_id NOT NULL ENABLE);
  ALTER TABLE erp_gl_account MODIFY (change_user NOT NULL ENABLE);
  ALTER TABLE erp_gl_account MODIFY (change_dt NOT NULL ENABLE);
