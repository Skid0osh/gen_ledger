--------------------------------------------------------
--  File created - Friday-January-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function NEW_BATCH_ID
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE FUNCTION new_batch_id RETURN NUMBER AS
vNewBatchID     NUMBER;
BEGIN
    SELECT  erp_gl_batch_id_seq.NEXTVAL INTO vNewBatchID
    FROM dual;
    RETURN vNewBatchID;
END new_batch_id;
/
