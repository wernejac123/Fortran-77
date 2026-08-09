C **********************************************************************
C F77 SUBROUTINE PRINT ARRAY OF N CHARACTERS
      SUBROUTINE PRARR(A,N)
      CHARACTER*10 A(*)
      DO 100 I=1,N
       WRITE(*,*)I,' ',A(I)
100   CONTINUE
      RETURN
      END
C **********************************************************************
