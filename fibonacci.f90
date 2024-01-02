! this program print the fibonacci sequance till the desired number

program fibonacci
IMPLICIT none

integer :: n
integer :: i
integer, allocatable:: x(:)


print *, "enter the desired number of terms"
read *, n

if (n<0) then

	print *, "n must be positive"
	STOP

else
	allocate (x(1:n))
	x(1)=1
	x(2)=1
	do i=3,n
	
		x(i)=x(i-1)+x(i-2)
	
	enddo
	
	do i=1, n
	
		print *, x(i)
	
	enddo
	
	deallocate(x)
endif
	
end program	
		 
