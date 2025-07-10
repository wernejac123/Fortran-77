C IMPROVED VERSION OF CALC.F
C BASIC CALCULATOR

C SUBROUTINE TO PRINT HELP MENU
      SUBROUTINE HELP()
      CHARACTER IN
      WRITE(*,*)
      WRITE(*,*) 'ENTER OP WITH SINGLE QUOTES AROUND'
      WRITE(*,5) 'OP', 'COMMAND'

      WRITE(*,*) 'BASIC MATH'
      WRITE(*,5) 'A', 'ADD'
      WRITE(*,5) 'S', 'SUBTRACT'
      WRITE(*,5) 'M', 'MULTIPLY'
      WRITE(*,5) 'D', 'DIVIDE'
      WRITE(*,5) 'E', 'EXPONENT'
      WRITE(*,5) 'O', 'MODULUS'
      WRITE(*,5) 'R', 'SQUARE ROOT'
      WRITE(*,*)
      WRITE(*,*) 'ENTER ANY KEY (IN SINGLE QUOTES) FOLLOWED BY ENTER TO 
     +CONTINUE'
      READ(*,*) IN

      WRITE(*,*) 'TRIG'
      WRITE(*,5) 'Z', 'SIN'
      WRITE(*,5) 'C', 'COS'
      WRITE(*,5) 'T', 'TAN'
      WRITE(*,*)
      WRITE(*,*) 'INVERSE TRIG'
      WRITE(*,5) 'X', 'ASIN'
      WRITE(*,5) 'B', 'ACOS'
      WRITE(*,5) 'U', 'ATAN'
      WRITE(*,*)
      WRITE(*,*) 'LOGS'
      WRITE(*,5) 'N', 'LN'
      WRITE(*,5) 'L', 'LOG'
      WRITE(*,*)
      WRITE(*,*) 'PROGRAM'
      WRITE(*,5) 'H', 'HELP'
      WRITE(*,5) 'Q', 'QUIT'
      WRITE(*,*)
      WRITE(*,*)
      WRITE(*,*) 'SQUARE ROOT, LOGARITHMS, AND TRIG FUNCTIONS ARE APPLIE
     +D TO NUM1 ONLY'
      WRITE(*,*)

5     FORMAT(A4, A15)
      RETURN
      END

      PROGRAM CALC2

      IMPLICIT NONE
      DOUBLE PRECISION NUM1, NUM2, ANS
      CHARACTER OP

10    WRITE(*,*) 'ENTER NUM1, NUM2, OP'
      READ(*,*) NUM1, NUM2, OP

C BASIC MATH
      IF(OP .EQ. 'A') THEN
         ANS = NUM1 + NUM2
      ELSEIF(OP .EQ. 'S') THEN
         ANS = NUM1 - NUM2
      ELSEIF(OP .EQ. 'M') THEN
         ANS = NUM1 * NUM2
      ELSEIF(OP .EQ. 'D') THEN
         ANS = NUM1 / NUM2
      ELSEIF(OP .EQ. 'E') THEN
         ANS = NUM1**NUM2
      ELSEIF(OP .EQ. 'O') THEN
         ANS = MOD(NUM1, NUM2)
      ELSEIF(OP .EQ. 'R') THEN
         ANS = SQRT(NUM1)
C TRIG
      ELSEIF(OP .EQ. 'Z') THEN
         ANS = SIN(NUM1)
      ELSEIF(OP .EQ. 'C') THEN
         ANS = COS(NUM1)
      ELSEIF(OP .EQ. 'T') THEN
         ANS = TAN(NUM1)
C INVERSE TRIG
      ELSEIF(OP .EQ. 'X') THEN
         ANS = ASIN(NUM1)
      ELSEIF(OP .EQ. 'B') THEN
         ANS = ACOS(NUM1)
      ELSEIF(OP .EQ. 'U') THEN
         ANS = ATAN(NUM1)
C LOGARITHMS
      ELSEIF(OP .EQ. 'N') THEN
         ANS = LOG(NUM1)
      ELSEIF(OP .EQ. 'L') THEN
         ANS = LOG10(NUM1)
C PROGRAM
      ELSEIF(OP .EQ. 'H') THEN
         CALL HELP()
      ELSEIF(OP .EQ. 'Q') THEN
         GOTO 20 
      ELSE
         WRITE(*,*) 'INVALID INPUT'  
      ENDIF

      WRITE(*, *) ANS
      GOTO 10

20    STOP
      END 
