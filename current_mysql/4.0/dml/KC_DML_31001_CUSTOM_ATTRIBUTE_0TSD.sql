DELIMITER /
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'billingElement','Billing Element',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),40,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'costSharingBudget','Cost Sharing Budget',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),30,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'numberOfTrainees','# of Trainees',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'Number'),6,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'graduateStudentCount','Graduate Student Count',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'Number'),6,null,null,'Personnel Items for Review','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'tenured','Tenured',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),30,'org.kuali.kra.bo.KcPerson','userName','Personnel Items for Review','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'exportControls','Export Controls',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),30,null,null,'Project Details','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'inventions','Inventions',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),30,'org.kuali.kra.bo.KcPerson','userName','Project Details','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'localReviewDate','Local Review Date',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'Date'),10,null,null,'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'courseName','Course Name',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),80,null,null,'Course Related','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_CUSTOM_ATTRIBUTE VALUES(NULL)
/
INSERT INTO CUSTOM_ATTRIBUTE (ID,NAME,LABEL,DATA_TYPE_CODE,DATA_LENGTH,LOOKUP_CLASS,LOOKUP_RETURN,GROUP_NAME,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
VALUES ((SELECT (MAX(ID)) FROM SEQ_CUSTOM_ATTRIBUTE),'instructorName','Instructor Name',(SELECT DATA_TYPE_CODE FROM CUSTOM_ATTRIBUTE_DATA_TYPE WHERE DESCRIPTION = 'String'),80,'org.kuali.kra.bo.KcPerson','fullName','Course Related','admin',NOW(),UUID(),1)
/
DELIMITER ;
