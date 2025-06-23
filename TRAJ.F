      PROGRAM TRAJ
C TRAJECTORY:
C X(T) = X0 * V0 T * 1/2 A T^2

      DOUBLE PRECISION X0, V0, T, XT
      PARAMETER(ACCEL=-9.8)

      X0 = 10.0
      V0 = 0.0
      T = .5

      XT = X0 + V0 * T + .5 * ACCEL * T**2
      PRINT *, XT

      STOP
      END
