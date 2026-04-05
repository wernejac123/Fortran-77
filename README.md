# Fortran-77
Fortran 77 programs I wrote as I was learning new things in Fortran, so they are mainly for learning purposes and may contain errors.

-To compile in FreeDOS use watcomf (after running C:\DEVEL\WATCOMF\OWSETENV.BAT).

ex: C:\WFL FILE.F

-To compile on linux with gfortran I used:
gfortran -std=legacy -Wall -Wextra 
-Wconversion file_name.f -o file_name
strip file_name 

-A few of these programs I got from James Hall on the FreeDOS youtube channel with minor changes like adding STOP and indenting loops.

-struct.f was compiled in gfrotran in linux using:
gfortran -std=legacy -fdec-structure -g -Wall -Werror -Wextra -Wconversion struct.f -o struct

strip -s struct

-structures are not a standard feature in Fortran. struct.f did compile in FreeDOS too.

BUG: as of Apr 5, 2026 there is a bug where my programs are losing precision (calculating numbers as REAL instead of DOUBLEPRECISON). NOTE TO SELF: fix this by using D like 3.0D0 (DOUBLEPRECISION engineering notation) for all numbers including input from user)
