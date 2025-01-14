DELIMITER /
CREATE TABLE BUD_FORMULATED_COST_DETAIL ( 
    BUD_FORMULATED_COST_DETAIL_ID DECIMAL(12,0) NOT NULL, 
    BUDGET_DETAILS_ID DECIMAL(12,0) NOT NULL, 
    FORMULATED_NUMBER DECIMAL(3,0) NOT NULL, 
    FORMULATED_TYPE_CODE VARCHAR(3) NOT NULL, 
    UNIT_COST DECIMAL(12,2), 
    COUNT DECIMAL(5,0), 
    FREQUENCY DECIMAL(5,0), 
    CALCULATED_EXPENSES DECIMAL(12,2), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL
)
/
ALTER TABLE BUD_FORMULATED_COST_DETAIL 
ADD CONSTRAINT PK_BUD_FORMULATED_COST_DETAIL 
PRIMARY KEY (BUD_FORMULATED_COST_DETAIL_ID)
/

DELIMITER ;
