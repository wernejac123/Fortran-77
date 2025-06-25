C PROGRAM DEMONSTRATING FUNCTIONS
      INTEGER FUNCTION SUM(A, B)
      INTEGER A, B
      SUM = A * B

      RETURN
      END
            
      PROGRAM CALLEX

      IMPLICIT NONE

      INTEGER X, Y, SUM

      WRITE(*,*) 'ENTER X, Y:'
      READ(*,*) X, Y

      WRITE(*,*) SUM(X, Y)

      STOP
      END
