INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_TYP_CD, FIRST_NM, MIDDLE_NM, LAST_NM, SUFFIX_NM, PREFIX_NM, DFLT_IND, ACTV_IND, LAST_UPDT_DT, TITLE_NM, NOTE_MSG, NM_CHNG_DT)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', NULL, 'Admin', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacucadmin', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacucadmin@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_GRP_MBR_T (GRP_MBR_ID,GRP_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_GRP_MBR_ID_S.NEXTVAL,(SELECT GRP_ID FROM KRIM_GRP_T WHERE NMSPC_CD = 'KC-WKFLW' AND GRP_NM = 'KcAdmin'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacucadmin','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'000001','Y',1)
/

INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_TYP_CD, FIRST_NM, MIDDLE_NM, LAST_NM, SUFFIX_NM, PREFIX_NM, DFLT_IND, ACTV_IND, LAST_UPDT_DT, TITLE_NM, NOTE_MSG, NM_CHNG_DT)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', NULL, 'Researcher', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacucresearcher', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacucresearcher@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacucresearcher','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'IN-CARD','Y',1)
/

INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_TYP_CD, FIRST_NM, MIDDLE_NM, LAST_NM, SUFFIX_NM, PREFIX_NM, DFLT_IND, ACTV_IND, LAST_UPDT_DT, TITLE_NM, NOTE_MSG, NM_CHNG_DT)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', NULL, 'Aggregator', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacucaggregator', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacucaggregator@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacucaggregator','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'IN-CARD','Y',1)
/

INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_Typ_cd, first_NM, middle_NM, last_NM, suffix_NM, prefix_NM, dflt_ind, ACTV_IND, LAST_UPDT_DT, title_NM, note_msg, NM_chng_dt)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', NULL, 'Reviewer', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacucreviewer', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacucreviewer@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucreviewer'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacucreviewer','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'IN-CARD','Y',1)
/

INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_TYP_CD, FIRST_NM, MIDDLE_NM, LAST_NM, SUFFIX_NM, PREFIX_NM, DFLT_IND, ACTV_IND, LAST_UPDT_DT, TITLE_NM, NOTE_MSG, NM_CHNG_DT)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', NULL, 'Viewer', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacucviewer', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacucviewer@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacucviewer','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'IN-CARD','Y',1)
/

INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_TYP_CD, FIRST_NM, MIDDLE_NM, LAST_NM, SUFFIX_NM, PREFIX_NM, DFLT_IND, ACTV_IND, LAST_UPDT_DT, TITLE_NM, NOTE_MSG, NM_CHNG_DT)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', NULL, 'Create', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacuccreate', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacuccreate@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacuccreate','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'IN-CARD','Y',1)
/

INSERT INTO KRIM_ENTITY_T (ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_ENTITY_ID_S.NEXTVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_NM_T (ENTITY_NM_ID, OBJ_ID, VER_NBR, ENTITY_ID, NM_TYP_CD, FIRST_NM, MIDDLE_NM, LAST_NM, SUFFIX_NM, PREFIX_NM, DFLT_IND, ACTV_IND, LAST_UPDT_DT, TITLE_NM, NOTE_MSG, NM_CHNG_DT)
       VALUES (KRIM_ENTITY_NM_ID_S.NEXTVAL, SYS_GUID(), 1, KRIM_ENTITY_ID_S.CURRVAL, 'PRFR', 'IACUC', 'Card', 'Administrator', NULL, NULL, 'Y', 'Y', SYSDATE, NULL, NULL, NULL)
/
INSERT INTO KRIM_PRNCPL_T (PRNCPL_ID, OBJ_ID, VER_NBR, PRNCPL_NM, ENTITY_ID, PRNCPL_PSWD, ACTV_IND, LAST_UPDT_DT)
       VALUES (KRIM_PRNCPL_ID_S.NEXTVAL, SYS_GUID(), 1, 'iacucadmin-card', KRIM_ENTITY_ID_S.CURRVAL, 'fK69ATFsAydwQuteang+xMva+Tc=', 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ENT_TYP_CD, ENTITY_ID, OBJ_ID, VER_NBR, ACTV_IND, LAST_UPDT_DT)
       VALUES ('PERSON', KRIM_ENTITY_ID_S.CURRVAL, SYS_GUID(), 1, 'Y', SYSDATE)
/
INSERT INTO KRIM_ENTITY_EMAIL_T (ENTITY_EMAIL_ID,ENTITY_ID,ENT_TYP_CD,EMAIL_TYP_CD,EMAIL_ADDR,DFLT_IND,ACTV_IND,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ENTITY_EMAIL_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,'PERSON','WRK','iacucadmin-card@kuali.org','Y','Y',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
       VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin-card'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ENTITY_EMP_INFO_T (ACTV_IND,BASE_SLRY_AMT,EMP_ID,EMP_REC_ID,EMP_STAT_CD,EMP_TYP_CD,ENTITY_EMP_ID,ENTITY_ID,LAST_UPDT_DT,OBJ_ID,PRMRY_DEPT_CD,PRMRY_IND,VER_NBR)
       VALUES ('Y',100000,'iacucadmin-card','1','A','P',KRIM_ENTITY_EMP_ID_S.NEXTVAL,KRIM_ENTITY_ID_S.CURRVAL,SYSDATE,SYS_GUID(),'IN-CARD','Y',1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Viewer'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucviewer'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Unit'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Viewer'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Aggregator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucaggregator'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Unit'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Aggregator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Unit'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Reviewer'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucreviewer'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Administrator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Administrator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin-card'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'IN-CARD',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Creator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'jtester'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'majors'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'chew'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'woods'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'oblood'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'khcrabtr'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'irbadmin'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'irbadmin'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'irbresearcher'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUCApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'irbresearcher'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Aggregator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Aggregator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucaggregator'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Aggregator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Reviewer'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'jtester'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'N',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Reviewer'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucreviewer'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Administrator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Administrator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IACUC Administrator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin-card'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'IN-CARD',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Creator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Creator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacuccreate'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC Protocol Creator'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber'),'000001',SYS_GUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ATTR_DATA_T (ATTR_DATA_ID,ROLE_MBR_ID,KIM_TYP_ID,KIM_ATTR_DEFN_ID,ATTR_VAL,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ATTR_DATA_ID_S.NEXTVAL,KRIM_ROLE_MBR_ID_S.CURRVAL,(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy'),(SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits'),'Y',SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC ProtocolApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucadmin'),'P',SYSDATE,SYS_GUID(),1)
/

INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_ID,MBR_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR) 
    VALUES (KRIM_ROLE_MBR_ID_S.NEXTVAL,(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-IACUC' AND ROLE_NM = 'IACUC ProtocolApprover'),(SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'iacucresearcher'),'P',SYSDATE,SYS_GUID(),1)
/
