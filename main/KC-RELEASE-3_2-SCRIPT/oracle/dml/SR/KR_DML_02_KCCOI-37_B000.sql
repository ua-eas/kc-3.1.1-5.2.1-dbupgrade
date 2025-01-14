--
--

INSERT INTO KRCR_PARM_T (APPL_ID,NMSPC_CD,CMPNT_CD,PARM_NM,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,OBJ_ID) 
VALUES ('KC','KC-PROTOCOL','Document','PROTOCOL_DISCLOSE_STATUS_CODES',1,'CONFG','100;101;200;201;202','Protocol status codes a coi disclosure event will be considered active.','A',sys_guid())
/
INSERT INTO KRCR_PARM_T (APPL_ID,NMSPC_CD,CMPNT_CD,PARM_NM,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,OBJ_ID) 
VALUES ('KC','KC-PROTOCOL','Document','SPONSORS_FOR_PROTOCOL_DISCLOSE',1,'CONFG','COI Disclosures','Define sponsors for protocol requiring disclosure.','A',sys_guid())
/
INSERT INTO KRCR_PARM_T (APPL_ID,NMSPC_CD,CMPNT_CD,PARM_NM,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,OBJ_ID) 
VALUES ('KC','KC-PROTOCOL','Document','ALL_SPONSORS_FOR_PROTOCOL_DISCLOSE',1,'CONFG','N','All IRB protocols require disclosure, irrespective to funding sponsor code','A',sys_guid())
/
