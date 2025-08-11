C FIX ADD IMPLICIT NONE TO SUBROUTINE

C SWAP 2 INTEGERS 
      SUBROUTINE ISWAP(A, B)
      IMPLICIT NONE
      INTEGER A, B
C LOCAL VARIABLES
      INTEGER TMP

      TMP = A
      A = B
      B = TMP
      RETURN
      END

      PROGRAM CALLEX
      INTEGER M, N

      M = 1
      N = 2

      WRITE(*,*) M, N
      CALL ISWAP(M, N)
      WRITE(*,*) M, N

      STOP
      END
