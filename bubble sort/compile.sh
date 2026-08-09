FFLAGS="-std=legacy -g -Wall -Werror -Wextra -Wconversion -fsanitize=address"
gfortran $FFLAGS -c prarr.f
gfortran $FFLAGS -c bsort.f
gfortran $FFLAGS -c test.f
gfortran $FFLAGS *.o  -o test
rm *.o

