!Contains the routines for calculating the laplacians for the array

module Laplacian

contains

subroutine Calculate_reds( Wire_array )
double precision, intent(inout) :: Wire_array

integer:: i,j,x,y,x_length,y_length
x_length=100
y_length=100

do i = 0,x_length,2
   do j=0,y_length
      !For every other row ofset by 1
      x=i
      y=j
      if (mod(x,2)==0) then 
         y=y+1
      end if
      print*, x,y
   end do
end do


end subroutine

end module
