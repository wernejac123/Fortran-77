C PROGRAM CALULATE ANGLE THETA OF RIGHT ANGLE TRIANGLE AND C
      PROGRAM TRIG

      IMPLICIT NONE

      DOUBLE PRECISION A, B, C, THETA

      PRINT *, 'ENTER A, B'
      READ *, A, B
      THETA = ATAN(A/B)
      C = SQRT(A**2 + B**2)
      PRINT *, 'A:', A, ' B:', B, ' C:', C, ' THETA:', THETA

      STOP
      END     
