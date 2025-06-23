C TRAJECTORY OF BALL DROPPING
      PROGRAM BALL

      IMPLICIT NONE

      DOUBLE PRECISION D, T, I, A, VI
      PARAMETER(A=-9.8)
      PARAMETER(VI=0.0)
      
      WRITE(*, *) 'ENTER D'
      READ(*,*) D

      WRITE(*,*) 'VI:', VI, ' A:', A 
      DO 10 I = D, 0, -1
         T = SQRT(-I / (VI* T + .5 * A))
         WRITE(*, 20) I, T      
10    CONTINUE
20    FORMAT(' D:', D15.7, ' T:', D15.7) 

      STOP
      END 
