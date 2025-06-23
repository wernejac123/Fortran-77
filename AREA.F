C PROGRAM TO CALCULATE AREA OF A CIRCLE
      PROGRAM CIRCLE

      IMPLICIT NONE

      DOUBLE PRECISION AREA, R, PI
      PARAMETER(PI=3.141592)

      WRITE (*,*) 'ENTER RADIUS:'
      READ (*,*) R

      AREA = PI * R * R
      WRITE (*,*) 'AREA:', AREA

      STOP
      END
