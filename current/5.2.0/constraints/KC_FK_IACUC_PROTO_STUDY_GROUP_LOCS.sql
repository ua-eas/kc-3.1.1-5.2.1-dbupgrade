ALTER TABLE IACUC_PROTO_STUDY_GROUP_LOCS 
ADD CONSTRAINT FK_IACUC_PROTO_STUDY_LOC_TYPE 
FOREIGN KEY (LOCATION_TYPE_CODE) 
REFERENCES IACUC_LOCATION_TYPE (LOCATION_TYPE_CODE)
/

ALTER TABLE IACUC_PROTO_STUDY_GROUP_LOCS 
ADD CONSTRAINT FK_IACUC_PROTO_STUDY_GROUP_LOC 
FOREIGN KEY (LOCATION_ID) 
REFERENCES IACUC_LOCATION_NAME (LOCATION_ID)
/


