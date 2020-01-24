--------------------------------------------------------
--  File created - Wednesday-January-22-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ERP_GL_BATCH
--------------------------------------------------------
DROP TABLE erp_gl_batch CASCADE CONSTRAINTS
/

CREATE TABLE erp_gl_batch
   (     batch_id       NUMBER(6,0)    NOT NULL
      ,	dt_created     DATE           NOT NULL
      , 	dt_posted      DATE
      ,	source_module  VARCHAR2(2)
      , 	post_error     VARCHAR2(1)
      ,	user_id        VARCHAR2(50)   NOT NULL
      ,  dt_updated     DATE           NOT NULL
   )
/
--------------------------------------------------------
--  DDL for Index ERP_GL_BATCH_IDX1
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_batch_idx1 ON erp_gl_batch (dt_posted, batch_id)
/
--------------------------------------------------------
--  DDL for Index ERP_GL_BATCH_PK
--------------------------------------------------------
CREATE UNIQUE INDEX erp_gl_batch_pk ON erp_gl_batch (batch_id)
/
--------------------------------------------------------
--  Constraints for Table ERP_GL_BATCH
--------------------------------------------------------
ALTER TABLE erp_gl_batch ADD CONSTRAINT erp_gl_batch_pk PRIMARY KEY (batch_id)
USING INDEX  ENABLE
/