--------------------------------------------------------
--  File created - Friday-January-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger ERP_GL_JOURNAL_TYPE_SEQ_TR
--------------------------------------------------------
CREATE OR REPLACE TRIGGER erp_gl_journal_type_seq_tr 
BEFORE INSERT ON erp_gl_journal_type FOR EACH ROW 
WHEN (NEW.journal_type_id IS NULL)
BEGIN
  SELECT erp_gl_journal_type_seq.NEXTVAL INTO :NEW.journal_type_id FROM DUAL;
END;