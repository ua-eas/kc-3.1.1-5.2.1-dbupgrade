TRUNCATE TABLE JOB_CODE DROP STORAGE
/
INSERT INTO JOB_CODE (JOB_CODE,JOB_TITLE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('AA000','DEFAULT','admin',SYSDATE,SYS_GUID(),1)
/
