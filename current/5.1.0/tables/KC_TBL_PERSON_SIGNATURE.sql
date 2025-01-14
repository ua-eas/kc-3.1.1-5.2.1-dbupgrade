CREATE TABLE PERSON_SIGNATURE ( 
    PERSON_SIGNATURE_ID NUMBER(12,0) NOT NULL, 
    PERSON_ID VARCHAR2(40) NOT NULL,
    PERSON_AUTOGRAPH BLOB,
    FILE_NAME VARCHAR2(255) NOT NULL,
    CONTENT_TYPE VARCHAR2(150) NOT NULL,
    DEFAULT_ADMIN_SIGNATURE	VARCHAR2(1) NOT NULL,
    SIGNATURE_ACTIVE	VARCHAR2(1) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL) 
/


ALTER TABLE PERSON_SIGNATURE 
ADD CONSTRAINT PK_PERSON_SIGNATURE 
PRIMARY KEY (PERSON_SIGNATURE_ID) 
/

