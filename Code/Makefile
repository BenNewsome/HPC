# The compiler
FC = gfortran

FCFLAGS = -g -fbounds-check
FCFLAGS = -O2
FCFLAGS += -I/usr/include

exe: main.o
		$(FC) -o exe main.o laplacian.o

main.o: laplacian.o

%.o: %.f90 
		$(FC) $(FCFLAGS) -c $<

.PHONY: clean

clean:;      rm -f *.o *.mod exe
