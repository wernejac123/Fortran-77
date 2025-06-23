C CALCULATE X USING QUADRATIC EQUATION'
C X CANNOT BE A COMPLEX NUMBER (X+I)
      PROGRAM QUAD

      IMPLICIT NONE
     
      DOUBLE PRECISION XNEG, XPOS  
      DOUBLE PRECISION A(3)

10    PRINT *, 'ENTER 3 REAL NUMBERS:'
      READ *, A(1), A(2), A(3)
      IF(A(2)**2 - 4.0 * A(1) * A(3) .LT. 0.0) THEN
         PRINT *, 'ERROR: B^2 - 4AC .LT. 0.0'
         GOTO 10
         END IF

      XNEG = (-A(2) - SQRT(A(2)**2 - 4.0 * A(1) * A(3))) / (2.0 * A(1))            
      XPOS = (-A(2) + SQRT(A(2)**2 - 4.0 * A(1) * A(3))) / (2.0 * A(1))
      PRINT *, 'X=', XNEG, ',', XPOS      

      STOP
      END
