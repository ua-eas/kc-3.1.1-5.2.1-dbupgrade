INSERT INTO krcr_parm_t(NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID)
VALUES ('KC-PD','Document','enableBudgetCalculatedSalary',SYS_GUID(),1,'CONFG','Y','Flag to display BASE SALARY BY PERIOD LINK','A','KC')
/
INSERT INTO krcr_parm_t(NMSPC_CD,CMPNT_CD,PARM_NM,OBJ_ID,VER_NBR,PARM_TYP_CD,VAL,PARM_DESC_TXT,EVAL_OPRTR_CD,APPL_ID)
VALUES ('KC-PD','Document','DEFAULT_INFLATION_RATE_FOR_SALARY',SYS_GUID(),1,'CONFG','3','Code corresponding to calculated basesalary amount','A','KC')
/
