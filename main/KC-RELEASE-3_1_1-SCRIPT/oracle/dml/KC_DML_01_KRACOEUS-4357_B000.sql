INSERT INTO CLOSEOUT_REPORT_TYPE(CLOSEOUT_REPORT_CODE,DESCRIPTION,UPDATE_TIMESTAMP,UPDATE_USER,VER_NBR,OBJ_ID)
    VALUES ('6','Invoice',SYSDATE,'admin','1',SYS_GUID())
/
UPDATE CLOSEOUT_REPORT_TYPE SET DESCRIPTION = 'Financial' where CLOSEOUT_REPORT_CODE = '1'
/
