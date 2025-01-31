
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT)
VALUES(KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T 
WHERE NM = 'Default' AND NMSPC_CD='KUALI'), 'KC-PROTOCOL', 'Create or Modify Research Areas', 'Create and maintain research area permission')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE 
ROLE_NM = 'IRB Administrator' AND NMSPC_CD='KC-UNT'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Create or Modify Research Areas' AND NMSPC_CD='KC-PROTOCOL'), 'Y')
/


INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT)
VALUES(KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT PERM_TMPL_ID FROM KRIM_PERM_TMPL_T 
WHERE NM = 'Default' AND NMSPC_CD='KUALI'), 'KC-IACUC', 'Create or Modify Iacuc Research Areas', 'Create and maintain iacuc research area permission')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE 
ROLE_NM = 'IACUC Administrator' AND NMSPC_CD='KC-UNT'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Create or Modify Iacuc Research Areas' AND NMSPC_CD='KC-IACUC'), 'Y')
/
