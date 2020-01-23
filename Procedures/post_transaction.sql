--------------------------------------------------------
--  File created - Thursday-January-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure POST_TRANSACTION
--------------------------------------------------------
set define off;

CREATE OR REPLACE EDITIONABLE PROCEDURE post_transaction 
(
    inBatchID       IN NUMBER 
,   inBatchTranID   IN NUMBER
,   inUserID        IN VARCHAR2
,   outRowCount     OUT NUMBER
) AS
BEGIN
    -- Post Transactions
    UPDATE erp_gl_transaction
    SET     user_id     = inUserID
        ,   dt_posted   = SYSDATE
        ,   dt_updated  = SYSDATE
    WHERE batch_id      = inBatchID
      AND batch_tran_id = inBatchTranID;
    outRowCount := SQL%ROWCOUNT;
END post_transaction;
/