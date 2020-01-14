CREATE OR REPLACE PROCEDURE insert_journal 
 (in_trans_id       NUMBER,
  in_amount         NUMBER,
  in_debit_acct     VARCHAR2,
  in_credit_acct    VARCHAR2,
  in_timedate       DATE)
IS
    v_user  VARCHAR2(20);
BEGIN
    SELECT USER INTO v_user FROM dual;
    INSERT INTO mwt_gljournal (trans_id, origin, dt_timestamp, debit_acct, credit_acct)
      VALUES (in_trans_id, v_user, in_timedate, in_debit_acct, in_credit_acct);
EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line( SQLERRM );
END insert_journal;