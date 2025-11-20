
      PROGRAM MAIN
      IMPLICIT NONE
      INTEGER N,I
      PARAMETER(N=5)
      DOUBLEPRECISION X(N)

C      N=5

C INIT ARRAY
      DO 20 I=1,N,1
      X(I)=I
20    CONTINUE

      CALL PRINT(X,N)
      STOP
      END

