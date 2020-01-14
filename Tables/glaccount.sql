DROP TABLE mwt_glaccount CASCADE CONSTRAINTS;

CREATE TABLE mwt_glaccount
(
  acct_id       VARCHAR2(10) NOT NULL 
, acct_desc     VARCHAR2(30) 
, acct_type     VARCHAR2(3) 
);
