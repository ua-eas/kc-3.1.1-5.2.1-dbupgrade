DELIMITER /

INSERT INTO SUBAWARD_REPORT_TYPE (REPORT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
       VALUES (1,'Final Technical Report',NOW(),'admin',1,UUID())
/

INSERT INTO SUBAWARD_REPORT_TYPE (REPORT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
       VALUES (2,'Final Patent Report',NOW(),'admin',1,UUID())
/

INSERT INTO SUBAWARD_REPORT_TYPE (REPORT_TYPE_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
       VALUES (3,'Final Property Report',NOW(),'admin',1,UUID())
/

DELIMITER ;