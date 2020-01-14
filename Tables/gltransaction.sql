DROP TABLE mwt_gltransaction CASCADE CONSTRAINTS;

CREATE TABLE mwt_gltransaction
(
  trans_id          NUMBER          NOT NULL 
, gl_acct_id        VARCHAR2(10)
, trans_date        DATE 
, clt_ven_id        VARCHAR2(6) 
, clt_ven_type      VARCHAR2(1) 
, ref_desc          VARCHAR2(20) 
, ref_type          VARCHAR2(1) 
, amount            NUMBER(10,2)
);
