C PROGRAM TO SAVE AN ARRAY TO A FILE
C FIX ADD IMPLICIT NONE TO SUBROUTINES

C SUBROUTINE TO INIT ARRAYS
      SUBROUTINE INIT(N, X)
      IMPLICIT NONE
      INTEGER I, N
      DOUBLE PRECISION X(*)

      DO 10 I = 1, N
         WRITE(*, 25) I 
         READ(*, *) X(I)
10    CONTINUE

25    FORMAT('ENTER X(', I2, '):') 

      RETURN
      END

C SUBROUTINE TO PRINT ARRAY
      SUBROUTINE PRINT(N, X)
      IMPLICIT NONE
      INTEGER I, N
      DOUBLE PRECISION X(*)

      DO 30 I = 1, N
         WRITE(*,*) X(I)
30    CONTINUE

      RETURN
      END

C SUBROUTINE TO WRITE ARRAY TO FILE
      SUBROUTINE SAVE(N, X)
      IMPLICIT NONE
      INTEGER I, N, U
      PARAMETER(U=20)
      DOUBLE PRECISION X(*)

      OPEN(U, FILE='SAV.DAT')

      DO 40 I = 1, N
         WRITE(U, 50) X(I)
40    CONTINUE
50    FORMAT(3(D15.7))
      CLOSE(U)

      RETURN
      END

      PROGRAM FILE

      IMPLICIT NONE
      INTEGER NMAX, N
      PARAMETER(NMAX = 1000) 
      DOUBLE PRECISION X(NMAX)

      WRITE(*,*) 'ENTER N:'                                                 
      READ(*,*) N                 
      CALL INIT(N, X(N)) 
      CALL PRINT(N, X(N))
      CALL SAVE(N, X(N))

      STOP
      END
