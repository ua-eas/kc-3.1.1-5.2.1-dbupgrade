DECLARE temp NUMBER;
BEGIN
        SELECT COUNT(*) INTO temp FROM user_sequences WHERE sequence_name = 'SEQ_PROTO_CORRESP_TEMPL';
        IF temp > 0 THEN EXECUTE IMMEDIATE 'DROP SEQUENCE SEQ_PROTO_CORRESP_TEMPL'; END IF;
END;
/

CREATE SEQUENCE SEQ_PROTO_CORRESP_TEMPL INCREMENT BY 1 START WITH 50000 MAXVALUE 99999999999999 NOCACHE  ORDER  NOCYCLE
/