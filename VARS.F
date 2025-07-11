C COMMENT
C FIXED ERROR IN PROGRAM
      PROGRAM VARS

      IMPLICIT NONE
      INTEGER I
      REAL X
      DOUBLE PRECISION Y, PI
      PARAMETER(PI = 3.14159265)
      COMPLEX Z
      CHARACTER A

      A = 'C' 
      I = 69
      X = 12.2
      Y = 6.6
      Z = (5.0, 1.0)
      WRITE(*,*) I, X, Y, Z, A, PI

      STOP
      END
