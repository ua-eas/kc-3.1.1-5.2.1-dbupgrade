-- SET ATTR_DATA_ID = 1400 WHERE ATTR_DATA_ID = 10000;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_ROLE_MBR_ATTR_DATA_T WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Protocol Creator' AND NMSPC_CD = 'KC-UNT') 
  AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'kr')) AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy' AND NMSPC_CD = 'KC-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber' AND NMSPC_CD = 'KC-SYS'));

-- SET ATTR_DATA_ID = 1401 WHERE ATTR_DATA_ID = 10001;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_ROLE_MBR_ATTR_DATA_T WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Protocol Creator' AND NMSPC_CD = 'KC-UNT') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'kr')) AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy' AND NMSPC_CD = 'KC-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits' AND NMSPC_CD = 'KC-SYS'));

-- SET ATTR_DATA_ID = 1402 WHERE ATTR_DATA_ID = 20006;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_ROLE_MBR_ATTR_DATA_T WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Time and Money Document Viewer' AND NMSPC_CD = 'KC-AWARD') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart')) AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy' AND NMSPC_CD = 'KC-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'unitNumber' AND NMSPC_CD = 'KC-SYS'));

-- SET ATTR_DATA_ID = 1403 WHERE ATTR_DATA_ID = 20007;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_ROLE_MBR_ATTR_DATA_T WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Time and Money Document Viewer' AND NMSPC_CD = 'KC-AWARD') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart')) AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'UnitHierarchy' AND NMSPC_CD = 'KC-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'subunits' AND NMSPC_CD = 'KC-SYS'));

-- SET ROLE_MBR_ID = 1500 WHERE ROLE_MBR_ID = 10000;
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Protocol Creator' AND NMSPC_CD = 'KC-UNT') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'kr'));

-- SET ROLE_MBR_ID = 1500 WHERE ROLE_MBR_ID = 10000;			  
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID =     (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Protocol Creator' AND NMSPC_CD = 'KC-UNT') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'kr'));

-- SET ROLE_MBR_ID = 1501 WHERE ROLE_MBR_ID = 20001;
-- FIXING ERRONEOUS RECORD BY LOOKING FOR HARDCODED ID
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRBApprover' AND NMSPC_CD = 'KC-WKFLW') AND MBR_ID = '10002');
-- ASSOCIATED LOGICAL KEY SEARCH  
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRBApprover' AND NMSPC_CD = 'KC-WKFLW') AND MBR_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'ProtocolApprover' AND NMSPC_CD = 'KC-PROTOCOL'));
-- FIXING ERRONEOUS RECORD BY LOOKING FOR HARDCODED ID
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.CURRVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRBApprover' AND NMSPC_CD = 'KC-WKFLW') AND MBR_ID = '10002');
-- ASSOCIATED LOGICAL KEY SEARCH
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.CURRVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRBApprover' AND NMSPC_CD = 'KC-WKFLW') AND MBR_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'ProtocolApprover' AND NMSPC_CD = 'KC-PROTOCOL'));

  
-- SET ROLE_MBR_ID = 1502 WHERE ROLE_MBR_ID = 20006;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRBApprover' AND NMSPC_CD = 'KC-WKFLW') AND MBR_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Administrator' AND NMSPC_CD = 'KC-UNT'));
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.CURRVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRBApprover' AND NMSPC_CD = 'KC-WKFLW') AND MBR_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Administrator' AND NMSPC_CD = 'KC-UNT'));

-- SET ROLE_MBR_ID = 1503 WHERE ROLE_MBR_ID = 20007;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Time and Money Document Viewer' AND NMSPC_CD = 'KC-AWARD') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'));
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.CURRVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Time and Money Document Viewer' AND NMSPC_CD = 'KC-AWARD') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart'));

-- SET ROLE_MBR_ID = 1505 WHERE ROLE_MBR_ID = 20009;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Application Administrator' AND NMSPC_CD = 'KC-SYS') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart') AND ROWNUM = 1);
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.CURRVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Application Administrator' AND NMSPC_CD = 'KC-SYS') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart') AND ROWNUM = 1);

-- SET ROLE_MBR_ID = 1504 WHERE ROLE_MBR_ID = 20008;
UPDATE KRIM_ROLE_MBR_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.NEXTVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Application Administrator' AND NMSPC_CD = 'KC-SYS') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart') AND ROLE_MBR_ID != 1505);
UPDATE KRIM_ROLE_MBR_ATTR_DATA_T SET ROLE_MBR_ID = KRIM_ROLE_MBR_ID_BS_S.CURRVAL WHERE ROLE_MBR_ID = (SELECT ROLE_MBR_ID FROM KRIM_ROLE_MBR_T WHERE ROLE_ID = (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Application Administrator' AND NMSPC_CD = 'KC-SYS') AND MBR_ID = (SELECT PRNCPL_ID FROM KRIM_PRNCPL_T WHERE PRNCPL_NM = 'quickstart') AND ROLE_MBR_ID != 1505);

-- SET ATTR_DATA_ID = 1500 WHERE ATTR_DATA_ID = 20002;			  
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_RSP_ATTR_DATA_T WHERE RSP_ID = (SELECT RSP_ID FROM KRIM_RSP_T WHERE NM = 'ProtocolUnitApprovalResponsibility' AND NMSPC_CD = 'KC-WKFLW') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type, Routing Node & Action Information' AND NMSPC_CD = 'KR-WKFLW') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName' AND NMSPC_CD = 'KR-WKFLW')); 
-- SET ATTR_DATA_ID = 1501 WHERE ATTR_DATA_ID = 20003;   
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_RSP_ATTR_DATA_T WHERE RSP_ID = (SELECT RSP_ID FROM KRIM_RSP_T WHERE NM = 'ProtocolUnitApprovalResponsibility' AND NMSPC_CD = 'KC-WKFLW') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type, Routing Node & Action Information' AND NMSPC_CD = 'KR-WKFLW') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'routeNodeName' AND NMSPC_CD = 'KR-WKFLW'));  
-- SET ATTR_DATA_ID = 1502 WHERE ATTR_DATA_ID = 20004;  
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_RSP_ATTR_DATA_T WHERE RSP_ID = (SELECT RSP_ID FROM KRIM_RSP_T WHERE NM = 'ProtocolUnitApprovalResponsibility' AND NMSPC_CD = 'KC-WKFLW') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type, Routing Node & Action Information' AND NMSPC_CD = 'KR-WKFLW') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'required' AND NMSPC_CD = 'KR-WKFLW'));
-- SET ATTR_DATA_ID = 1503 WHERE ATTR_DATA_ID = 20005;    
UPDATE KRIM_RSP_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_RSP_ATTR_DATA_T WHERE RSP_ID = (SELECT RSP_ID FROM KRIM_RSP_T WHERE NM = 'ProtocolUnitApprovalResponsibility' AND NMSPC_CD = 'KC-WKFLW') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type, Routing Node & Action Information' AND NMSPC_CD = 'KR-WKFLW') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'actionDetailsAtRoleMemberLevel' AND NMSPC_CD = 'KR-WKFLW'));    
-- SET ATTR_DATA_ID = 1700 WHERE ATTR_DATA_ID = 20000;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_PERM_ATTR_DATA_T WHERE PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Modify Notification Template' AND NMSPC_CD = 'KC-PROTOCOL') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type (Permission)' AND NMSPC_CD = 'KR-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName' AND NMSPC_CD = 'KR-WKFLW')); 

-- SET ATTR_DATA_ID = 1701 WHERE ATTR_DATA_ID = 20001;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_PERM_ATTR_DATA_T WHERE PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Notification Template' AND NMSPC_CD = 'KC-PROTOCOL') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Type (Permission)' AND NMSPC_CD = 'KR-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName' AND NMSPC_CD = 'KR-WKFLW')); 

-- SET ATTR_DATA_ID = 1702 WHERE ATTR_DATA_ID = 20012;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_PERM_ATTR_DATA_T WHERE PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Create Award Account' AND NMSPC_CD = 'KC-AWARD') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Action' AND NMSPC_CD = 'KC-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName' AND NMSPC_CD = 'KR-WKFLW')); 

-- SET ATTR_DATA_ID = 1703 WHERE ATTR_DATA_ID = 20013;
UPDATE KRIM_PERM_ATTR_DATA_T SET ATTR_DATA_ID = KRIM_ATTR_DATA_ID_BS_S.NEXTVAL WHERE ATTR_DATA_ID = (SELECT ATTR_DATA_ID FROM KRIM_PERM_ATTR_DATA_T WHERE PERM_ID = (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Create Award Account' AND NMSPC_CD = 'KC-AWARD') AND KIM_TYP_ID = (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Action' AND NMSPC_CD = 'KC-SYS') AND KIM_ATTR_DEFN_ID = (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentAction' AND NMSPC_CD = 'KC-SYS')); 

COMMIT;