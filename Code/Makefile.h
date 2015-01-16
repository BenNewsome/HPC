# The compiler
FC = gfortran

FCFLAGS = -g -fbounds-check
FCFLAGS = -O2
FCFLAGS += -I/usr/include

PROGRAMS = laplacian main

all: $(PROGRAMS)

laplacian.o: laplacian.f

main.o: main.f laplacian.o

%.o %.f
      $(FC) $(FCFLAGS) -c $<

.PHONY: clean

clean:
      rm -f *.o *.mod
