C BASIC CALCULATOR
      PROGRAM CALC

      IMPLICIT NONE

      DOUBLE PRECISION NUM1, NUM2, ANS
      CHARACTER OP

10    WRITE(*,*) 'ENTER NUM1, NUM2, OP'
      READ(*,*) NUM1, NUM2, OP

      IF(OP .EQ. 'A') THEN
         ANS = NUM1 + NUM2
      ELSEIF(OP .EQ. 'S') THEN
         ANS = NUM1 - NUM2
      ELSEIF(OP .EQ. 'M') THEN
         ANS = NUM1 * NUM2
      ELSEIF(OP .EQ. 'D') THEN
         ANS = NUM1 / NUM2
      ELSEIF(OP .EQ. 'Q') THEN 
         GOTO 20
      ELSE
         WRITE(*,*) 'INVALID INPUT'  
      ENDIF

      WRITE(*, *) ANS
      GOTO 10

20    STOP
      END 
