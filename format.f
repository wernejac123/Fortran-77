C PROGRAM USING FORMATS
      PROGRAM FORMAT

      IMPLICIT NONE
      REAL X

      X = 0.025
      WRITE(*, 100) 'x=', x
      WRITE(*, 110) 'x=', x 

100   FORMAT(A, F5.3)
110   FORMAT(A, E8.1)

      STOP
      END
