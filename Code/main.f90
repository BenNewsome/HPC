program main
use Laplacian, only: Calculate_reds
implicit none

include 'mpif.h'


integer::i,j,k,l,x_length, y_length,n
double precision, dimension(0:101,0:101) :: Wire_array
logical:: First_run

integer:: ierror, size, rank



x_length=100
y_length=100

!allocate(Wire_array(0:x_length+1, 0:y_length+1))

First_run = .True.

call MPI_INIT(ierror)
call MPI_COMM_SIZE(MPI_COMM_WORLD, size, ierror)
call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierror)

print*, 'node', rank, ': Hello world'
call MPI_FINALIZE(ierror)

do n=1,2
   
   call Calculate_reds( Wire_array )

end do

end program
