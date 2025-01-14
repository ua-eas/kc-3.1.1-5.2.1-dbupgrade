CREATE TABLE NOTIFICATION_TYPE (
  NOTIFICATION_TYPE_ID DECIMAL(6,0) NOT NULL, 
  MODULE_CODE          DECIMAL(3,0) NOT NULL, 
  ACTION_CODE          VARCHAR(3) NOT NULL, 
  DESCRIPTION          VARCHAR(200) NOT NULL, 
  SUBJECT              VARCHAR(1000), 
  MESSAGE              VARCHAR(4000), 
  PROMPT_USER          CHAR(1) DEFAULT 'N' NOT NULL, 
  SEND_NOTIFICATION    CHAR(1) DEFAULT 'N' NOT NULL,
  SYSTEM_GENERATED     CHAR(1) DEFAULT 'N',
  UPDATE_USER          VARCHAR(60) NOT NULL, 
  UPDATE_TIMESTAMP     DATE NOT NULL,
  VER_NBR              DECIMAL(8,0) DEFAULT 1 NOT NULL, 
  OBJ_ID               VARCHAR(36) NOT NULL
);
 
ALTER TABLE NOTIFICATION_TYPE 
  ADD CONSTRAINT PK_NOTIFICATION_TYPE PRIMARY KEY (NOTIFICATION_TYPE_ID);