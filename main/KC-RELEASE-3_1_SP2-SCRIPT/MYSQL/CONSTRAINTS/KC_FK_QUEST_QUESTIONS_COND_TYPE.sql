ALTER TABLE QUESTIONNAIRE_QUESTIONS 
ADD CONSTRAINT FK_QUEST_QUESTIONS_COND_TYPE 
FOREIGN KEY (CONDITION_TYPE) 
REFERENCES QUESTIONNAIRE_CONDITION_TYPE (QUEST_CONDITION_TYPE_CODE);
