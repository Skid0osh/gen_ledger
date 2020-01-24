--------------------------------------------------------
--  File created - Thursday-January-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function NEW_BATCH_TRANS_ID
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE FUNCTION new_batch_trans_id
(
  in_batch_id IN  NUMBER 
) RETURN NUMBER AS
    vBatchTransId  NUMBER(4);
BEGIN
    SELECT MAX(batch_trans_id)
    INTO vBatchTransId
    FROM erp_gl_transaction
    WHERE batch_id = in_batch_id;
    
    vBatchTransId := NVL(vBatchTransId, 0) + 1;
    RETURN vBatchTransId;
END;
/
