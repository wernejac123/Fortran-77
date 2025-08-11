C REVISED QUAD.F MAKE FUNCTION
C CALCULATE X USING QUADRATIC EQUATION'
C X CANNOT BE A COMPLEX NUMBER (X+I)
C FIX BY ADDING IMPLICIT NONE TO SUBROUTINES
      SUBROUTINE Q(A, B, C, XPOS, XNEG)
      IMPLICIT NONE
      DOUBLE PRECISION A, B, C, XNEG, XPOS

      XNEG = (-B - SQRT(B**2 - 4.0 * A * C)) / (2.0 * A)
      XPOS = (-B + SQRT(B**2 - 4.0 * A * C)) / (2.0 * A)       
      END

      SUBROUTINE IN(A, B, C)
      IMPLICIT NONE
      DOUBLE PRECISION A, B, C
10    WRITE(*,*) 'ENTER 3 REAL NUMBERS:'
      READ(*,*) A, B, C
      IF(B**2 - 4.0 * A * C .LT. 0.0) THEN
         WRITE(*,*) 'ERROR: B^2 - 4AC .LT. 0'
         GOTO 10
         END IF
      END

      PROGRAM QUAD2

      IMPLICIT NONE
     
      DOUBLE PRECISION XNEG, XPOS  
      DOUBLE PRECISION A(3)

      CALL IN(A(1), A(2), A(3))
      CALL Q(A(1), A(2), A(3), XNEG, XPOS)      
      WRITE(*,*) XNEG, XPOS

      STOP
      END
