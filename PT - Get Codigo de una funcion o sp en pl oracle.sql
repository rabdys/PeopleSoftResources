-- PROEGRAMA PARA EXTRAER LOS SCRIPTS DE UNA FUNCION PLSQL ORACLE . 
DECLARE  
    CURSOR vCursor is SELECT TEXT FROM USER_SOURCE WHERE name = 'CONVERT_LONG_TO_CHAR1';
    recCursor vCursor%ROWTYPE;
    vText varchar(32500);
BEGIN
    OPEN vCursor  ;
    LOOP
        FETCH vCursor INTO recCursor  ;
        EXIT WHEN vCursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(vText);
    END LOOP;
    CLOSE vCursor;
END;

