! this program should calculate the factorial of number n using subroutines

program factor
IMPLICIT none

integer :: n

print *, "print n"
read *, n

call fact(n)

end program

subroutine fact (j)

	integer :: j
	integer :: prod=1
	integer :: i
	
	do i=1, j, 1
		prod=prod*i
	enddo
	
	print *, prod

endsubroutine
