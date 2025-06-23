      PROGRAM ARRAY
      INTEGER I
      REAL XARY(5)

      PRINT *, 'ENTER 5 REAL VALUES'
      DO 10 I = 1, 5
      READ *, XARY(I)
10    CONTINUE

      PRINT *, 'THESE ARE THE VALUES YOU ENTERED:'
      DO 20 I = 1, 5, 1
20    PRINT *, XARY(I)

      STOP
      END
