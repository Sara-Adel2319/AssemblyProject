.MODEL SMALL
.386
.STACK 64
.DATA
;;WELCOME
MSG1 DB 10,'                     ******   WELCOME TO FCIS MU <3    ******         ','$'
MSG2 DB 10,10,10, 'HERE YOU CAN FINDE SUBJECTS LIST FOR GENARAL PROGRAM IN FCIS','$'

;;NOTFOUND
EMSG DB 10,10, 'YOU HAVE ENTERED AN INVALID VALUE','$'

;;MAINPAGE
MMSG DB 10, 'Choose:',10,'1 : BACK TO LEVELS LIST' ,10, '2 : Exit','$' 

SPACE DB 10,10,'~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~','$'

;;GRADE MESSAGE
GMSG DB 10,10,'LEVELS:',10,10,'1 : First grade ',10,'2 : Seconde grade ',10,'3 : Thirde grade ',10,'4 : Fourth grade ',10,10,'ENTER THE GRADE : ','$'

;;TERM MESSAGE
TMSG DB 10,'1 : Fitst term' ,10,'2 : Seconde term ',10,10 ,'SELECT THE TERM : ', '$'

;;DEPT MESSAGE
DMSG DB 10,'Departments',10,10,'1 : Computer science' ,10, '2 : Information tecnology' ,10, '3 : Informaion system',10,10,'SELECT THE DEPARTMENT : ' ,'$'

;;FIRST MSG
FFMSG DB 10,'FERST GRADE, FIRST TERM COURSES:',10,10,' 1- Fundamental of computer science',10,' 2- Fundemental of programming',10, ' 3- Discrete mathematics',10, ' 4- English for computer scientists',10,' 5- Physics',10,' 6- Human rights','$'  
FSMSG DB 10,'FERST GRADE, SECOND TERM COURSES:',10,10,' 1- Fundamental of information tecnology',10,' 2- Fundemental of information systems',10,' 3- Object oriented programming',10,' 4- Calculus',10,' 5- Digital logic circuits',10,' 6- Prpbability theory and statistical(1)','$'

;;SECOND MSG
SFMSG DB 10,'SECOND GRADE, FIRST TERM COURSES:',10,10,' 1- Operating systems',10,' 2- Data structures and algorithms',10,' 3- Linear algebra',10,' 4- Computer organization and architecture',10,' 5- Web programming','$'
SSMSG DB 10,'SECOND GRADE, SECOND TERM COURSES:',10,10,' 1- Probability theory and statistical distribution',10,' 2- Database systems',10,' 3- Data communications',10,' 4- Computer graphics',10,' 5- Social, ethical and professional issues',10,' 6- Electronics','$'

;;THIRD MSG
TCS1MSG DB 10 ,'COMPUTER SCIENCE DPT, THIRD GRADE, FIRST TERM COURSES:' ,10,10,' 1- Softwra engineerig(1) ',10,' 2- Computer networks and security',10,' 3- Algorithms analysis and design',10,' 4- Logic programming',10, ' 5- Assembly language','$'
TCS2MSG DB 10 ,'COMPUTER SCIENCE DPT, THIRD GRADE, SECOND TERM COURSES:' ,10,10,' 1- Artificial intelligence(1) ',10,' 2- Digital signal processing',10,' 3- Programming language design',10,' 4- Operaing system(2)',10, ' 5- Software engineering(2)','$'

TIT1MSG DB 10 ,'INFORMATIN TECNOLOGY DPT, THIRD GRADE, FIRST TERM COURSES:' ,10,10,' 1- Computer networks ',10,' 2- Softwra engineerig',10,' 3- Database systems(2)',10,' 4- Electronics(2)',10, ' 5- Research methods','$'
TIT2MSG DB 10 ,'INFORMATIN TECNOLOGY DPT, THIRD GRADE, SECOND TERM COURSES:' ,10,10,' 1- Soft computing ',10,' 2- Image processing',10,' 3- Network programming',10,' 4- Human computer interaction',10, ' 5- Computer vision','$'

TIS1MSG DB 10 ,'INFORMATIN SYSTEMS DPT, THIRD GRADE, FIRST TERM COURSES:' ,10,10,' 1- Information theory ',10,' 2- Computer networks',10,' 3- Database systems(2)',10,' 4- System analysis and logical design',10, ' 5- Research methods','$'
TIS2MSG DB 10 ,'INFORMATIN SYSTEMS DPT, THIRD GRADE, SECOND TERM COURSES:' ,10,10,' 1- Intelligent information systems ',10,' 2- E-business strategy, architecture and design',10,' 3- Network programming',10,' 4- Systems design and implementation',10, '5-Modelling and simulation','$'

;;FOURTH MSG
FCS1MSG DB 10,'COMPUTER SCIENCE DPT, FOURTH GRADE, FIRST TERM COURSES:',10,10,' 1- Natural language processing',10,' 2- Disrtibuted systems',10,' 3- Artifitial intelligence(2)',10,' 4- Selected topics in computer science',10,' 5- Robotics',10,' 6- Graduate project(1)','$'
FCS2MSG DB 10,'COMPUTER SCIENCE DPT, FOURTH GRADE, SECOND TERM COURSES:',10,10,' 1- Knowledge-based systems',10,' 2- Compiler construction',10,' 3- Computer arabization and language technology',10,' 4- Neural networks',10,' 5- Embedded systems',10,' 6- Graduate project(2)','$'

FIT1MSG DB 10 ,'INFORMATIN TECNOLOGY DPT, FOURTH GRADE, FIRST TERM COURSES:' ,10,10,' 1- Multimedia',10,' 2- Mobile computing',10,' 3- Pattern recognition',10,' 4- Medical informatics',10,' 5- Computer vision',10,' 6- Graduate project(1)','$'
FIT2MSG DB 10 ,'INFORMATIN TECNOLOGY DPT, FOURTH GRADE, SECOND TERM COURSES:' ,10,10,' 1- Computer security',10,' 2- Data mining',10,' 3- Microprocessor applications',10,' 4- Selected topics in information technoloy',10,' 5- Biometrics',10,' 6- Graduate project(2)','$'

FIS1MSG DB 10,'INFORMATIN SYSTEMS DPT, FOURTH GRADE, FIRST TERM COURSES:' ,10,10,' 1- Multimedia',10,' 2- Mobile computing',10,' 3- Distributed database systems',10,' 4- Project management',10,' 5- Decision support systems',10,' 6- Graduate project(1)','$'
FIS2MSG DB 10,'INFORMATIN SYSTEMS DPT, FOURTH GRADE, SECOND TERM COURSES:' ,10,10,' 1- Computer security',10,' 2- Data mining',10,' 3- Geographic information systems',10,' 4- Selected topics in information systems',10,' 5- Information visualization',10,' 6- Graduate project(2)','$'

.CODE
    MAIN PROC FAR
        .STARTUP
        
    FIRST:
        LEA DX, MSG1
        CALL PRSTR

        LEA DX, MSG2
        CALL PRSTR

        LEA DX, GMSG
        CALL PRSTR


 ;RECIVE GRADE
 
        CALL READ
        CMP AL, '1'
        JE FG 
        CMP AL, '2'
        JE SG
        CMP AL, '3'
        JE TG
        CMP AL, '4'
        JE FOG

        JMP NOTFOUNED

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;FIRST GRADE

    FG:
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR

 ;select the term;
 
        CALL READ
        CMP AL, '1'
        JE FG1
        CMP AL, '2'
        JE FG2
        JMP NOTFOUNED
        
    FG1:
        CALL SPACELINE
        LEA DX, FFMSG
        CALL PRSTR
        JMP MAINPAGE
    FG2:
        CALL SPACELINE
        LEA DX, FSMSG
        CALL PRSTR
        JMP MAINPAGE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;;SECOND GRADE
 
    SG: 
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR

 ;select the term;
 
        CALL READ
        CMP AL, '1'
        JE SG1
        CMP AL, '2'
        JE SG2
        JMP NOTFOUNED
        
    SG1:
        CALL SPACELINE
        LEA DX, SFMSG
        CALL PRSTR
        JMP MAINPAGE
    SG2:
        CALL SPACELINE
        LEA DX, SSMSG
        CALL PRSTR
        JMP MAINPAGE
        
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 ;; THIRD GRADE

 ;; select the dpt
 
    TG:
        CALL SPACELINE
        LEA DX, DMSG
        CALL PRSTR
        CALL READ
 
        CMP AL, '1'
        JE TCS
        CMP AL, '2'
        JE TIT
        CMP AL, '3'
        JE TIS
        JMP NOTFOUNED
        
 ;;; 3rd COMPUTER SCIENCE

    TCS:
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR 
        CALL READ
        CMP AL, '1'
        JE TCS1
        CMP AL, '2'
        JE TCS2
        JMP NOTFOUNED
        
    TCS1:
        CALL SPACELINE
        LEA DX, TCS1MSG
        CALL PRSTR
        JMP MAINPAGE
 
    TCS2:
        CALL SPACELINE
        LEA DX, TCS2MSG
        CALL PRSTR
        JMP MAINPAGE

;;;; 3rd INFORMATON TRCNOLOGY

    TIT:
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR 
        CALL READ
        CMP AL, '1'
        JE TIT1
        CMP AL, '2'
        JE TIT2
        JMP NOTFOUNED
        
    TIT1:
        CALL SPACELINE
        LEA DX, TIT1MSG
        CALL PRSTR
        JMP MAINPAGE
 
    TIT2:
        CALL SPACELINE
        LEA DX, TIT2MSG
        CALL PRSTR
        JMP MAINPAGE

;;;;;;3rd information systems

    TIS:
        CALL SPACELINE
        LEA DX,  TMSG
        CALL PRSTR 
        CALL READ
        CMP AL, '1'
        JE TIS1
        CMP AL, '2'
        JE TIS2
        JMP NOTFOUNED
        
    TIS1:
        CALL SPACELINE
        LEA DX, TIS1MSG
        CALL PRSTR
        JMP MAINPAGE

    TIS2:
        CALL SPACELINE
        LEA DX, TIS2MSG
        CALL PRSTR
        JMP MAINPAGE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 ;; Fourth grade

 ;; select the dpt
 
    FOG:
        CALL SPACELINE
        LEA DX, DMSG
        CALL PRSTR
        CALL READ
 
        CMP AL, '1'
        JE FCS
        CMP AL, '2'
        JE FIT
        CMP AL, '3'
        JE FIS
        JMP NOTFOUNED
        
 ;;; 4TH COMPUTER SCIENCE

    FCS:
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR 
        CALL READ
        CMP AL, '1'
        JE FCS1
        CMP AL, '2'
        JE FCS2
        JMP NOTFOUNED
        
    FCS1:
        CALL SPACELINE
        LEA DX, FCS1MSG
        CALL PRSTR
        JMP MAINPAGE
 
    FCS2:
        CALL SPACELINE
        LEA DX, FCS2MSG
        CALL PRSTR
        JMP MAINPAGE

 ;;;; 4TH INFORMATON TRCNOLOGY

    FIT:
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR 
        CALL READ
        CMP AL, '1'
        JE FIT1
        CMP AL, '2'
        JE FIT2
        JMP NOTFOUNED
        
    FIT1:
        CALL SPACELINE
        LEA DX, FIT1MSG
        CALL PRSTR
        JMP MAINPAGE
 
    FIT2:
        CALL SPACELINE
        LEA DX, FIT2MSG
        CALL PRSTR
        JMP MAINPAGE

 ;;;;;;4TH information systems

    FIS:
        CALL SPACELINE
        LEA DX, TMSG
        CALL PRSTR 
        CALL READ
        CMP AL, '1'
        JE FIS1
        CMP AL, '2'
        JE FIS2
        JMP NOTFOUNED
        
    FIS1:
        CALL SPACELINE
        LEA DX, FIS1MSG
        CALL PRSTR
        JMP MAINPAGE

    FIS2:
        CALL SPACELINE
        LEA DX, FIS2MSG
        CALL PRSTR
        JMP MAINPAGE

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  

    MAINPAGE:
        CALL SPACELINE
        LEA DX, MMSG
        CALL PRSTR
        CALL SPACELINE
        
        MOV AH , 10H
        INT 16H
        CMP AL, '1'
        JE FIRST
        CMP AL, '2'
        JE LAST 
        JMP NOTFOUNED

    NOTFOUNED:
        LEA DX, EMSG
        CALL PRSTR

    LAST:
       .EXIT
    MAIN ENDP

    PRSTR PROC NEAR
        MOV AH,09H
        INT 21H
        RET
    PRSTR ENDP
    
    READ PROC NEAR
        MOV AH,01H
        INT 21H
        RET
    READ ENDP

    SPACELINE PROC NEAR
        LEA DX, SPACE
        CALL PRSTR
        RET
    SPACELINE ENDP
END MAIN