C **********************************************************************
C F77 SUBROUTINE BUBBLE SORT ARRAY OF STRINGS(A-Z)
C A:ARRAY OF STRINGS (N ROWS)
C T:TEMP ARRAY
      SUBROUTINE BSORT(A,N)
      CHARACTER*10 A(*)
      CHARACTER*10 T
      DO 50 I=N,2,-1
       DO 25 J=1,N-1,1
        IF(A(J).GT.A(J+1))THEN
         T=A(J)
         A(J)=A(J+1)
         A(J+1)=T
        ENDIF
25     CONTINUE
50    CONTINUE      

      RETURN
      END
C **********************************************************************
