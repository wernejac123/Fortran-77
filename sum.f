C FIX BY ADDING IMPLICOT NONE TO ALL UNITS
C RENAME MAIN PROGRAN FROM SUM TO SM 

C PROGRAM CALCULATES SUMMATION OF AN ARRAY
      SUBROUTINE INIT(X, N)
      IMPLICIT NONE
      INTEGER I, N
      DOUBLE PRECISION X(*)

      DO 10 I = 1, N
         READ(*,*) X(I)
10    CONTINUE

      RETURN
      END

C RENAME FROM PRINT
      SUBROUTINE PRNT(X, N)
      IMPLICIT NONE
      INTEGER I, N
      DOUBLE PRECISION X(*)
      DO 20 I = 1, N
         WRITE(*,*) X(I)
20    CONTINUE

      RETURN
      END

C RENAME FROM ADD
      DOUBLE PRECISION FUNCTION AD(X, N)
      IMPLICIT NONE
      INTEGER I, N
      DOUBLE PRECISION X(*)

      AD = 0.0
      DO 30 I = 1, N
         AD = AD + X(I)
30    CONTINUE

      RETURN
      END

      PROGRAM SM

      IMPLICIT NONE
      INTEGER N, NMAX
      PARAMETER(NMAX=20)
      DOUBLE PRECISION A(NMAX), AD

      WRITE(*,*) 'N:'
      READ(*,*) N

      CALL INIT(A, N)
      CALL PRNT(A, N)
      
      WRITE(*,*) AD(A, N)

      STOP
      END
