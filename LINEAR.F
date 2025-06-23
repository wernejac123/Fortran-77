C PROGRAM TO SHOW TABLE OF LINEAR EQUATIONS
C Y=MX+B
      PROGRAM LINEAR

      IMPLICIT NONE

      DOUBLE PRECISION B, M, X, Y
      DOUBLE PRECISION LOW, UPP, SCALE

      WRITE(*,*) 'ENTER M, B, LOW, UPP, SCALE:'
      READ (*,*) M, B, LOW, UPP, SCALE

      WRITE(*,*) 'X  Y'
      DO 10 X = LOW, UPP, SCALE
         Y = M * X + B
         WRITE(*,20) X, Y  
10    CONTINUE
20    FORMAT('X=', D14.5, 1X, 'Y=', D14.5)

      STOP
      END
