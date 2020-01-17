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
    , descript          VARCHAR2(30)
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