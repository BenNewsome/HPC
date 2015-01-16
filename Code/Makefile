# The compiler
FC = gfortran

FCFLAGS = -g -fbounds-check
FCFLAGS = -O2
FCFLAGS += -I/usr/include

PROGRAMS = main

all: $(PROGRAMS)

laplacian.o: laplacian.f90

main.o: main.f90 laplacian.o

%.o: %.f90 ; $(FC) $(FCFLAGS) -c $<

.PHONY: clean

clean:;      rm -f *.o *.mod
