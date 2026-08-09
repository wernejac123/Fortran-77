C F77 TEST PROGRAM BUBBLE SORT AN ARRAY OF STRINGS
      PROGRAM TEST
C **********************************************************************
C CONSTANTS
C N=MAX ENTRIES
C IC=LINE COUNT
      PARAMETER(N=10,IC=7)
C **********************************************************************
C VARIABLES
C A: ARRAY OF STRINGS
      CHARACTER*10 A(N)
C      CHARACTER*10 TEMP
C **********************************************************************
C INITIALIZE ARRAY
      A(1)='LISA'
      A(2)='BART'
      A(3)='HOMER'
      A(4)='MARGE'
      A(5)='BARNEY'
      A(6)='NED'
      A(7)='AMY'
C **********************************************************************
C PRINT ARRAY BEFORE SORT
      CALL PRARR(A,IC)
C BLANK LINE BETWEEN PRINTS
      WRITE(*,*)
C **********************************************************************
C BUBBLE SORT A (A-Z)
C USE IC INSTEAD OF N
       CALL BSORT(A,IC)     
C***********************************************************************
C PRINT ARRAY AFTER SORT
      CALL PRARR(A,IC)
C **********************************************************************
      STOP
      END
