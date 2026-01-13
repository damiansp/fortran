# fortran

To compile:
> gfortran myfile.f90 -o myexecutable.x

With a module:
> gfortran -c my_mod.f90
> gfortran my_prog.f90 my_mod.o -o my_prog.x

Or in one line
> gfortran my_mod.f90 my_prog.f90 -o my_prog.x
