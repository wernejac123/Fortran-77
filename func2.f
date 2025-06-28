C PROGRAM DEMONSTRATING FUNCTIONS
      INTEGER FUNCTION SUM(A, B)
      INTEGER A, B
      SUM = A * B

      RETURN
      END

      INTEGER FUNCTION SUB(A, B)
      INTEGER A, B
      SUB = A - B

      RETURN
      END
            
      PROGRAM CALLEX

      IMPLICIT NONE

      INTEGER X, Y, SUM, SUB

      WRITE(*,*) 'ENTER X, Y:'
      READ(*,*) X, Y

      WRITE(*,*) SUM(X, Y)
      WRITE(*,*) SUM(X,Y) - SUB(X, Y)

      STOP
      END
