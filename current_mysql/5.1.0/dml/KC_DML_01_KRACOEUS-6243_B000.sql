DELIMITER /

UPDATE NOTIFICATION_TYPE SET SUBJECT='Protocol {PROTOCOL_NUMBER} review has been deleted.' WHERE MODULE_CODE='7' AND ACTION_CODE='905'
/
DELIMITER ;
