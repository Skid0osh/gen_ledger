DROP SEQUENCE journal_seq
/
DROP TABLE mwt_gljournal CASCADE CONSTRAINTS
/

CREATE TABLE mwt_gljournal
(
    journal_seq     NUMBER          NOT NULL
,   trans_id        NUMBER          NOT NULL
,   origin          VARCHAR2(10)    NOT NULL
,   dt_timestamp    DATE            NOT NULL
,   debit_acct      VARCHAR2(10)
,   credit_acct     VARCHAR2(10)
,   amount          NUMBER(10,2)
)
/

CREATE SEQUENCE journal_seq INCREMENT BY 1 START WITH 1 MINVALUE 1 MAXVALUE 9999999999 NOCYCLE ORDER
/

CREATE OR REPLACE TRIGGER journal_seq_tr
  BEFORE INSERT ON mwt_gljournal FOR EACH ROW
  WHEN (NEW.journal_seq is NULL)
BEGIN
  SELECT journal_seq.NEXTVAL INTO :NEW.journal_seq FROM DUAL;
END;

