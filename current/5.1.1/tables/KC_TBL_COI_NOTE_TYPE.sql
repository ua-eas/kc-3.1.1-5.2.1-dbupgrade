CREATE TABLE COI_NOTE_TYPE
(
      NOTE_TYPE_CODE VARCHAR2(3) NOT NULL
        , SORT_ID NUMBER(3) NOT NULL
        , DESCRIPTION VARCHAR2(20) NOT NULL
        , ACTIVE_FLAG CHAR(1) NOT NULL
        , UPDATE_TIMESTAMP TIMESTAMP NOT NULL
        , UPDATE_USER VARCHAR2(60) NOT NULL
        , VER_NBR NUMBER(8) default 1 NOT NULL
        , OBJ_ID VARCHAR2(36) NOT NULL
)
/

ALTER TABLE COI_NOTE_TYPE
    ADD CONSTRAINT COI_NOTE_TYPEP1
PRIMARY KEY (NOTE_TYPE_CODE)
/
