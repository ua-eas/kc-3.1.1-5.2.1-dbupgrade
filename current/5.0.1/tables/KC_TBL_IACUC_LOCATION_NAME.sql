CREATE TABLE IACUC_LOCATION_NAME ( 
    LOCATION_ID NUMBER(3,0) NOT NULL, 
    LOCATION_NAME VARCHAR2(200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    LOCATION_TYPE_CODE NUMBER(3,0), 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL) 
/


ALTER TABLE IACUC_LOCATION_NAME 
ADD CONSTRAINT PK_IACUC_LOCATION_NAME 
PRIMARY KEY (LOCATION_ID) 
/

