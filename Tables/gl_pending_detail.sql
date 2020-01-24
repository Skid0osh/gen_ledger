--------------------------------------------------------
--  File created - Monday-January-20-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_JOURNAL_DETAIL
--------------------------------------------------------
DROP TABLE erp_gl_pending_detail
/

CREATE TABLE erp_gl_pending_detail
  (   batch_id        NUMBER(6,0)   NOT NULL
    , batch_trans_id  NUMBER(4,0)   NOT NULL
    ,	gl_acct_id      NUMBER(8,0)   NOT NULL
    ,	amount          NUMBER(20,4)  NOT NULL
    ,	user_id         VARCHAR2(50)  NOT NULL
    ,	dt_updated      DATE          NOT NULL
  )
/
--------------------------------------------------------
--  DDL for Index ERP_GL_JOURNAL_DETAIL_PK
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_pending_detail_pk ON erp_gl_pending_detail (batch_id, batch_trans_id, gl_acct_id)
/
--------------------------------------------------------
--  Constraints for Table ERP_GL_JOURNAL_DETAIL
--------------------------------------------------------
ALTER TABLE erp_gl_pending_detail ADD CONSTRAINT erp_gl_pending_detail_pk PRIMARY KEY (batch_id, batch_trans_id, gl_acct_id)
USING INDEX  ENABLE
/