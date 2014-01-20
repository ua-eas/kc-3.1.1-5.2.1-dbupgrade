DELIMITER /
UPDATE COMM_MEMBER_EXPERTISE
SET IACUC_RESEARCH_AREA_CODE = '000001'
WHERE COMM_MEMBERSHIP_ID_FK IN (SELECT COMM_MEMBERSHIP_ID FROM COMM_MEMBERSHIPS
WHERE COMMITTEE_ID_FK = (SELECT id FROM committee
WHERE committee_id = 'KC002' AND committee_name = 'KC IACUC 1'))
/

DELIMITER ;
