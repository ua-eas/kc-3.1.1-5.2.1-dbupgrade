DELIMITER /
CREATE TABLE IACUC_PROTOCOL_OLR_STATUS (
	STATUS_CODE VARCHAR(3) NOT NULL,
	DESCRIPTION VARCHAR(200) NOT NULL,
	UPDATE_TIMESTAMP DATE NOT NULL,
	UPDATE_USER VARCHAR(60) NOT NULL,
	VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL,
	OBJ_ID VARCHAR(36) NOT NULL)
/

ALTER TABLE IACUC_PROTOCOL_OLR_STATUS 
ADD CONSTRAINT PK_IACUC_PROTOCOL_OLR_STATUS 
PRIMARY KEY (STATUS_CODE)
/

DELIMITER ;
