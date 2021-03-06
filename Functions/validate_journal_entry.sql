--------------------------------------------------------
--  File created - Thursday-January-23-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Function VALIDATE_JOURNAL_ENTRY
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE FUNCTION validate_journal_entry
(
    in_batch_id         IN NUMBER 
  , in_batch_trans_id   IN NUMBER 
) RETURN NUMBER AS 
vtotAmount   NUMBER(20,4)    := 0.0;
CURSOR c_entry IS
    SELECT  amount
    FROM    erp_gl_pending_detail
    WHERE   batch_id        = in_batch_id
      AND   batch_trans_id  = in_batch_trans_id;
BEGIN
    FOR r_entry IN c_entry LOOP
        vtotAmount := vtotAmount + r_entry.amount;
    END LOOP;
    RETURN vtotAmount;
END VALIDATE_JOURNAL_ENTRY;
/
