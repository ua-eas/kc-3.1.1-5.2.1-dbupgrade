INSERT INTO CONTACT_TYPE ( CONTACT_TYPE_CODE, DESCRIPTION, UPDATE_TIMESTAMP, UPDATE_USER, OBJ_ID ) 
VALUES ( '-1', ' ', now(), 'admin', uuid() );

COMMIT;
