-- UAR-469 - Deleting records so we can get the table upgraded. We will need
--           re-evaluate durring the upgrade for this module.

update BUDGET_SUB_AWARDS set ORGANIZATION_ID = '000001'
/

alter table BUDGET_SUB_AWARDS modify ORGANIZATION_ID VARCHAR2(8) NOT NULL
/

alter table BUDGET_SUB_AWARDS
	add constraint FK1_BUDGET_SUB_AWARDS foreign key (ORGANIZATION_ID)
	references ORGANIZATION(ORGANIZATION_ID)
/
