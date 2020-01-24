--------------------------------------------------------
--  File created - Thursday-January-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure POST_JOURNAL_ENTRY
--------------------------------------------------------
set define off;

CREATE OR REPLACE EDITIONABLE PROCEDURE post_journal_entry 
(
    inBatchID       IN NUMBER
,   inBatchTransID  IN NUMBER
,   inUserID        IN VARCHAR2 
,   outHeadRowCount OUT NUMBER 
,   outDetRowCount  OUT NUMBER
) AS 
BEGIN
    -- Update Detail Records
    --   Setting DT_POSTED to SYSDATE and updating USER_ID and DT_UPDATED
    UPDATE erp_gl_journal_detail
    SET     user_id     = inUserID
        ,   dt_posted   = SYSDATE
        ,   dt_updated  = SYSDATE
    WHERE batch_id        = inBatchID
      AND batch_trans_id  = inBatchTransID;
    outDetRowCount := SQL%ROWCOUNT;

    -- Update Header Records
    --   Setting DT_POSTED to SYSDATE and updating USER_ID and DT_UPDATED    
    UPDATE erp_gl_journal_header
    SET     user_id     = inUserID
        ,   dt_updated  = SYSDATE
        ,   dt_posted   = SYSDATE
    WHERE batch_id        = inBatchID
      AND batch_trans_id  = inBatchTransID;
    outHeadRowCount := SQL%ROWCOUNT;
END post_journal_entry;
/