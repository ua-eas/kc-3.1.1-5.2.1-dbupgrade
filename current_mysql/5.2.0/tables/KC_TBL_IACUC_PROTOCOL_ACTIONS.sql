DELIMITER /

ALTER TABLE IACUC_PROTOCOL_ACTIONS ADD CREATE_USER VARCHAR(60)
/
ALTER TABLE IACUC_PROTOCOL_ACTIONS ADD CREATE_TIMESTAMP DATE
/

DELIMITER ;
