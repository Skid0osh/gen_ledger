--------------------------------------------------------
--  File created - Friday-January-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_JOURNAL_TYPE
--------------------------------------------------------
DROP TABLE erp_gl_journal_type
/

CREATE TABLE erp_gl_journal_type
  (   journal_type_id   NUMBER        NOT NULL
    , journal_type_desc VARCHAR2(30)
    , dt_deleted        DATE
    , change_user       VARCHAR2(50)  NOT NULL
    , change_dt         DATE          NOT NULL
  )
/
--------------------------------------------------------
--  DDL for Index ERP_GL_JOURNAL_TYPE_PK
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_journal_type_pk ON erp_gl_journal_type (journal_type_id)
/
--------------------------------------------------------
--  Constraints for Table ERP_GL_JOURNAL_TYPE
--------------------------------------------------------
ALTER TABLE erp_gl_journal_type ADD CONSTRAINT erp_gl_journal_type_pk PRIMARY KEY (journal_type_id)
USING INDEX  ENABLE
/
--------------------------------------------------------
--  Populate Table with Current Values (sequence number set to start at 10)
--------------------------------------------------------
INSERT INTO erp_gl_journal_type
    VALUES (0, 'DO NOT USE (BAL FWD PREV YEAR)', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (1, 'CASH RECEIPTS', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (2, 'CASH DISPERSEMENTS', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (4, 'PAYROLL', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (5, 'ACCOUNTS PAYABLE', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (6, 'ASSETS', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (7, 'RECURRING', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (8, 'ACCOUNTS RECEIVABLE', null, 'Initial Load', SYSDATE)
/
INSERT INTO erp_gl_journal_type
    VALUES (9, 'ADJUSTING JOURNAL', null, 'Initial Load', SYSDATE)
/
COMMIT
/