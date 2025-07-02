C PROGRAM CALCULATES SUMMATION OF AN ARRAY
      SUBROUTINE INIT(X, N)
      INTEGER I, N
      DOUBLE PRECISION X(*)

      DO 10 I = 1, N
         READ(*,*) X(I)
10    CONTINUE

      RETURN
      END

      SUBROUTINE PRINT(X, N)
      INTEGER I, N
      DOUBLE PRECISION X(*)
      DO 20 I = 1, N
         WRITE(*,*) X(I)
20    CONTINUE

      RETURN
      END

      DOUBLE PRECISION FUNCTION ADD(X, N)
      INTEGER I, N
      DOUBLE PRECISION X(*)

      ADD = 0.0
      DO 30 I = 1, N
         ADD = ADD + X(I)
30    CONTINUE

      RETURN
      END

      PROGRAM SUM

      IMPLICIT NONE
      INTEGER N, NMAX
      PARAMETER(NMAX=20)
      DOUBLE PRECISION A(NMAX), ADD

      WRITE(*,*) 'N:'
      READ(*,*) N

      CALL INIT(A, N)
      CALL PRINT(A, N)
      
      WRITE(*,*) ADD(A, N)

      STOP
      END
