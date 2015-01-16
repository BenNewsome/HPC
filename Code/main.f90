program main
use Laplacian, only: Calculate_reds
implicit none

integer::i,j,k,l,x_length, y_length,n
double precision, dimension(0:101,0:101) :: Wire_array
logical:: First_run

x_length=100
y_length=100

!allocate(Wire_array(0:x_length+1, 0:y_length+1))

First_run = .True.

do n=1,2
   
   call Calculate_reds( Wire_array )

end do

end program
