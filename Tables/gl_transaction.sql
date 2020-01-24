--------------------------------------------------------
--  File created - Wednesday-January-22-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_TRANSACTION
--------------------------------------------------------
DROP TABLE erp_gl_transaction CASCADE CONSTRAINTS
/ 

CREATE TABLE erp_gl_transaction
  (		batch_id						NUMBER(6,0)		NOT NULL
		,	batch_trans_id			NUMBER(4,0)		NOT NULL
		,	gl_acct_id					NUMBER(8,0)
		,	gl_trans_year				NUMBER(4,0)
		,	gl_trans_period			NUMBER(2,0)
		,	clt_ven_id					VARCHAR2(6)
		,	clt_ven_type				VARCHAR2(1)
		,	trans_reference			VARCHAR2(20)
		,	reference_type			VARCHAR2(1)
		,	transaction_dt			DATE
		,	invoice_ref					VARCHAR2(20)
		,	amount							NUMBER(20,4)	NOT NULL
		,	user_id							VARCHAR2(50)	NOT NULL
		,	dt_posted						DATE
		,	dt_updated					VARCHAR2(20)	NOT NULL
  )
/
--------------------------------------------------------
--  DDL for Index ERP_GL_TRANSACTION_IDX1
--------------------------------------------------------
CREATE INDEX erp_gl_transaction_idx1 ON erp_gl_transaction (batch_id, batch_trans_id, gl_acct_id)
/
--------------------------------------------------------
--  DDL for Index ERP_GL_TRANSACTION_IDX2
--------------------------------------------------------
CREATE INDEX erp_gl_transaction_idx2 ON erp_gl_transaction (gl_trans_year, gl_trans_period) 
/
