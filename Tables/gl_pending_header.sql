--------------------------------------------------------
--  File created - Monday-January-20-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_JOURNAL_HEADER
--------------------------------------------------------
DROP TABLE erp_gl_pending_header
/

CREATE TABLE erp_gl_pending_header
(
    batch_id        NUMBER(6)     NOT NULL
  , batch_tran_id   NUMBER(4)     NOT NULL
  , yr              NUMBER(4)     NOT NULL
  , period          NUMBER(2)     NOT NULL
  , entry_dt        DATE
  , transaction_dt  DATE 
  , journal_type_id NUMBER(2)
  , user_id         VARCHAR2(50)  NOT NULL
  , dt_added        DATE          NOT NULL
  , refer           VARCHAR2(10)
  , descript        VARCHAR2(50)
)
/
--------------------------------------------------------
--  DDL for Index ERP_GL_JOURNAL_HEADER_PK
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_pending_header_pk ON erp_gl_pending_header (batch_id, batch_tran_id)
/
--------------------------------------------------------
--  Constraints for Table ERP_GL_JOURNAL_HEADER
--------------------------------------------------------
ALTER TABLE erp_gl_pending_header ADD CONSTRAINT erp_gl_pending_header_pk PRIMARY KEY (batch_id, batch_tran_id)
USING INDEX  ENABLE
/