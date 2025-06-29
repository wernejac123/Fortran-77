C MONEY CALCULATOR
      PROGRAM CALC

      IMPLICIT NONE

      REAL NUM1, NUM2, ANS
      CHARACTER OP

10    WRITE(*,*) 'ENTER NUM1, NUM2, OP'
      READ(*, *) NUM1, NUM2, OP

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

      WRITE(*, 15) 'ANS:', ANS
      GOTO 10

15    FORMAT(A, F6.2)

20    STOP
      END 
