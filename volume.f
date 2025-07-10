C PROGRAM CALCULATES VOLUME OF A CUBE (V=LWH)
      PROGRAM VOLume

      IMPLICIT NONE
      DOUBLE PRECISION L, W, H, V

      WRITE(*,*) 'ENTER L, W, H'
      READ(*,*) L, W, H
      V = L * W * H
      WRITE(*,*) 'VOL=', V

      STOP
      END
