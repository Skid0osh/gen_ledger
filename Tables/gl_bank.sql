--------------------------------------------------------
--  File created - Friday-January-17-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_BANK
--------------------------------------------------------
DROP TABLE erp_gl_bank
/

CREATE TABLE erp_gl_bank 
  (		bank_id 						VARCHAR2(5) NOT NULL
		,	gl_acct_id 					VARCHAR2(8) NOT NULL
		,	descript						VARCHAR2(30)
		, bank_acct_no				VARCHAR2(20)
		, checkbook_dt				DATE
		,	statement_dt				DATE
		, year 								NUMBER(4)
		, period							NUMBER(2)
		,	bank_name						VARCHAR2(32)
		, address1						VARCHAR2(32)
		, address2						VARCHAR2(32)
		, city								VARCHAR2(25)
		, state								VARCHAR2(4)
		, zip_code						VARCHAR2(10)
		,	contact							VARCHAR2(30)
		,	phone_no						VARCHAR2(23)
		,	fax_no							VARCHAR2(23)
		, country							VARCHAR2(3)
		, remit_name					VARCHAR2(32)
		,	remit_addr1					VARCHAR2(32)
		,	remit_addr2					VARCHAR2(32)
		,	remit_city					VARCHAR2(25)
		,	remit_state					VARCHAR2(4)
		,	remit_zip_code			VARCHAR2(10)
		, remit_contact				VARCHAR2(30)
		, remit_phone_no			VARCHAR2(23)
		,	remit_fax_no				VARCHAR2(23)
		,	remit_country				VARCHAR2(3)
		,	next_check_no				NUMBER
		,	balance							NUMBER(20,4)
		,	notes_collected			NUMBER(20,4)
		,	interest						NUMBER(20,4)
		,	nsf_payments				NUMBER(20,4)
		, overstated_deposits	NUMBER(20,4)
		,	misc_charges				NUMBER(20,4)
		,	stmt_balance				NUMBER(20,4)
		,	deposits_intransit	NUMBER(20,4)
		,	misc_plus						NUMBER(20,4)
		,	misc_minus					NUMBER(20,4)
		, change_user					VARCHAR2(50)	NOT NULL
		, change_dt						DATE					NOT NULL
		,	notes								VARCHAR2(250)
  )
/
--------------------------------------------------------
--  DDL for Index ERP_GL_BANK_IDX1
--------------------------------------------------------
CREATE INDEX erp_gl_bank_idx1 ON erp_gl_bank (gl_acct_id) 
/
--------------------------------------------------------
--  DDL for Index ERP_GL_BANK_PK
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_bank_pk ON erp_gl_bank (bank_id) 
/
--------------------------------------------------------
--  Constraints for Table ERP_GL_BANK
--------------------------------------------------------
ALTER TABLE erp_gl_bank ADD CONSTRAINT erp_gl_bank_pk PRIMARY KEY (bank_id)
USING INDEX  ENABLE
/