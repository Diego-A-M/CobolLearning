       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-NUM1                 PIC 9(02) VALUE ZEROS.
       77 WS-NUM2                 PIC 9(02) VALUE ZEROS.
       77 WS-RESULT               PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       P001-INICIO.
           
            PERFORM P100-CALC.
            PERFORM P999-FIM.
       
       P100-CALC.
            
            DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
            ACCEPT WS-NUM1
            
            DISPLAY 'DIGITE O SEGUNDO NUMERO: '
            ACCEPT WS-NUM2
            
            
            COMPUTE WS-RESULT = WS-NUM1 * WS-NUM2 
                    ON SIZE ERROR PERFORM P800-ERRO.
            DISPLAY 'RESULTADO: ' WS-RESULT.
       P800-ERRO.
           
            DISPLAY 'ERRO NO CALCULO, NUMERO MAIOR QUE 99!!'.
       P999-FIM.
       
       
       
       
       
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.

