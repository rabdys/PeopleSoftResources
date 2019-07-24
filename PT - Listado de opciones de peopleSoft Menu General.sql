DECLARE
      CURSOR cOpciones1
      IS
           SELECT PORTAL_LABEL,
                   rOpciones1.,
                   PORTAL_PRNTOBJNAME
             FROM PSPRSMDEFN  ;
             
    rOpciones1   cOpciones1%ROWTYPE;
    lTienePadre  Boolean;
    cPathTotal        VARCHAR2(400);
    cPathPadre        VARCHAR2(400);
    cObjPadre         VARCHAR2(400);
    c
BEGIN
FOR rOpciones1 
   IN cOpciones1
   LOOP
      LTienePadre := True;
      cPathTotal := 'Menu/';
      SELECT PORTAL_OBJNAME cObjPadre INTO FROM PSPRSMDEFN WHERE PORTAL_PRNTOBJNAME = rOpciones1.PORTAL_OBJNAME;
      
      WHILE LTienePadre
        LOOP
            cPathTotal := cPathTotal || 'Menu/'|| ;    
        END LOOP;
      DBMS_OUTPUT.put_line ('Opc:' || rOpciones1.PORTAL_LABEL);
   END LOOP;
  END;
  
  
  