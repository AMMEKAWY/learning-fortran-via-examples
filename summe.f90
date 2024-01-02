program sum
IMPLICIT none

integer :: x=0
integer :: b 
integer :: i

print *, "enter the upper limit"
read *, b

do i=1, b
	
	x=x+i
	
enddo 

print *, "the sum of real numbers from zero to", b, "=", x
print *, "emperical=", b*(b+1)/2

end program



