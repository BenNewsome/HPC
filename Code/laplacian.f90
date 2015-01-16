!Contains the routines for calculating the laplacians for the array

module laplacian

contains

subroutine Calculate_reds( Wire_array )
double precision, dimension(0:101,0:101), intent(inout) :: Wire_array

integer:: i,j,x,y,x_length,y_length
x_length=10
y_length=10

do i = 0,x_length
   do j=0,y_length,2
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
