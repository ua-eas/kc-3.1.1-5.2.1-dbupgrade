delimiter /
INSERT INTO KRIM_ROLE_MBR_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_TYP_CD,MBR_ID,LAST_UPDT_DT,OBJ_ID,VER_NBR)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_MBR_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-SYS' AND ROLE_NM = 'Manager'),'G',(SELECT GRP_ID FROM KRIM_GRP_T WHERE NMSPC_CD = 'KC-WKFLW' AND GRP_NM = 'KcAdmin'),NOW(),UUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_TYP_CD,MBR_ID,LAST_UPDT_DT,OBJ_ID,VER_NBR)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_MBR_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'IRBApprover'),'R',(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'),NOW(),UUID(),1)
/
INSERT INTO KRIM_ROLE_MBR_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_MBR_T (ROLE_MBR_ID,ROLE_ID,MBR_TYP_CD,MBR_ID,LAST_UPDT_DT,OBJ_ID,VER_NBR)
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_MBR_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'IRBApprover'),'R',(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND ROLE_NM = 'ProtocolApprover'),NOW(),UUID(),1)
/
delimiter ;
