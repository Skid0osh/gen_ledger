--------------------------------------------------------
--  File created - Friday-January-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_ACCOUNT
--------------------------------------------------------
DROP TABLE erp_gl_account CASCADE CONSTRAINTS
/

CREATE TABLE erp_gl_account 
  (	  gl_acct_id    NUMBER(8,0)   NOT NULL
    , acct_desc     VARCHAR2(30)
    , acct_type     VARCHAR2(3)
    , dt_deleted    DATE
    , user_id       VARCHAR2(50)  NOT NULL
    , dt_updated    DATE          NOT NULL
  )
/

--------------------------------------------------------
--  DDL for Index ERP_GL_ACCOUNT_IDX1
--------------------------------------------------------
CREATE INDEX erp_gl_account_idx1 ON erp_gl_account (acct_type, gl_acct_id)
/

--------------------------------------------------------
--  DDL for Index ERP_GL_ACCOUNT_PK
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_account_pk ON erp_gl_account (gl_acct_id)
/

--------------------------------------------------------
--  Constraints for Table ERP_GL_ACCOUNT
--------------------------------------------------------
ALTER TABLE erp_gl_account ADD CONSTRAINT erp_gl_account_pk PRIMARY KEY (gl_acct_id)
USING INDEX  ENABLE
/