C CALULATES  & PRINTS ALL POWERS OF 2 .LE. 100
      PROGRAM EX1

      IMPLICIT NONE

      INTEGER N
      N=1
10    IF(N .LE. 100) THEN
         N = 2*N 
         WRITE(*,*) 'N:', N
         GOTO 10
      ENDIF

      STOP
      END     
